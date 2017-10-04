args <- commandArgs(TRUE)

o.coverage <- args[1]
f9.coverage <- args[2]
corr_cutoff <- args[3]
cov_cutoff <- args[4]
lib_sizes <- args[5]
output_dir <- args[6]
output_file <- args[7]

o.coverage.data <- read.delim(o.coverage, header=FALSE)
f9.coverage.data <- read.delim(f9.coverage, header=FALSE)
lib.sizes.data <- read.delim(lib_sizes, header=FALSE)

m <- ncol(o.coverage.data)
lib.sizes.data <- lib.sizes.data/50000000
o.coverage.data[,5:m] <- t(apply(o.coverage.data[,5:m], 1, function(x) x/t(lib.sizes.data)))
f9.coverage.data[,5:m] <- t(apply(f9.coverage.data[,5:m], 1, function(x) x/t(lib.sizes.data)))

split_coverage <- function(a) {
  returnlist <- list()
  temp <- a[1,]
  for (i in 2:nrow(a)) {
    if (temp[1,4] == strsplit(as.character(a[i,4]),"_window")[[1]][1]){
      temp <- rbind(temp, a[i,])
    }else{
      returnlist[[length(returnlist)+1]] <- temp
      temp <- a[i,]
    }
  }
  returnlist[[length(returnlist)+1]] <- temp
  return(returnlist)
}

find_regions <- function(a,b, corr_cut, cov_cut) { #a=obam b=0.9
  
  asplit <- split_coverage(a)
  bsplit <- split_coverage(b)
  
  combined_regions <- data.frame()

  for (i in 1:length(asplit)){
    n <- nrow(asplit[[i]])-1
    m <- ncol(asplit[[i]])
	
	a_split <- asplit[[i]]
	b_split <- bsplit[[i]]

	
    corb <- data.frame(cor(t(a_split[1,5:m])
                           , t(b_split[-1,5:m])
						   , method = "spearman"))
    
    data <- data.frame(t(corb), row.names = NULL, stringsAsFactors = FALSE)
    
    data <- cbind(rep(c(1:n))
                  , a_split[-1,1:4]
                  , data)
    colnames(data)<-c("position","chr", "start", "stop", "name", "correlation")
    rownames(data)<-NULL
    a_split$average <- rowMeans(a_split[,5:m])
    b_split$average <- rowMeans(b_split[,5:m])
    data2 <- data.frame(cbind(c(1:n), a_split[-1,m+1]), stringsAsFactors=FALSE)
    data3 <- data.frame(cbind(c(1:n), b_split[-1,m+1]), stringsAsFactors=FALSE)
    colnames(data2)<-c("position","averageReadDepth")
    colnames(data3)<-c("position","averageReadDepth")
	
    regions <- data[which(data$correlation > as.numeric(corr_cut) & data3$averageReadDepth > as.numeric(cov_cut)),]
    regions <- regions[,2:4]
    if (nrow(regions)>0){
                regions$V4 <- paste(as.character(a_split[1,4]),"_region1",sep="")
    collapsed_regions <- regions[1,]
    nregion <- 1
    if (nrow(regions)>=2){
		for (j in 2:nrow(regions)) {
			if (as.numeric(regions[j,2]) <= (as.numeric(regions[j-1,3]))) {
				collapsed_regions[nrow(collapsed_regions),3] <- regions[j,3]
			}else{
				collapsed_regions <- rbind(collapsed_regions, regions[j,])
				nregion <- nregion + 1
				collapsed_regions[nrow(collapsed_regions),4] <- paste(as.character(a_split[1,4])
																	,"_region"
																	, as.character(nregion)
																	,sep="")	
			}
		}
	}	
	rownames(collapsed_regions) <- NULL
		
	combined_regions <- rbind(combined_regions, collapsed_regions)
}
    

 }
  
  write.table(combined_regions
              , output_file
              , sep = "\t"
              , col.names = FALSE
              , row.names = FALSE
              , quote = FALSE)				  
}
find_regions(o.coverage.data, f9.coverage.data, corr_cutoff, cov_cutoff)
