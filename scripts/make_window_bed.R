args <- commandArgs(TRUE)

qPCR_bed <- args[1]
window_size <- args[2]
window_size <- strtoi(window_size)
output_file <- args[3]

qPCR_table <- read.delim(qPCR_bed, header=FALSE, stringsAsFactors=FALSE)

make_windows_bed <- function(a, size) { #a is a bed file containing peaks of interest and coordinates
  return_bed <- data.frame()
  for (i in 1:nrow(a)) {
    line <- data.frame(a[i,],stringsAsFactors=FALSE)
    peak_name <- as.character(line[1,4])
    line <- rbind(line
                  , data.frame(V1=as.character(line[1,1])
                               , V2=line[1,2]
                               , V3=line[1,2]+size
                               , V4=as.character(paste(as.character(line[1,4])
                                                       , "_window1"
                                                       , sep = "")
                               )
                  )
    )
    count <- as.numeric(line[1,2])+size
    nline <- 2
    while (count < as.numeric(line[1,3])) {
      line <- rbind(line
					, data.frame(V1=as.character(line[nline,1])
								, V2=line[nline,2]+floor(size/4)
								, V3=line[nline,2]+floor(size/4)+size
								, V4=as.character(paste(as.character(line[1,4])
												 , "_window"
												 , as.character(nline)
												 , sep = "")
												 )
								)
                    )
      nline <- nline + 1
      count <- as.numeric(line[nline,3])
    }
    return_bed <- rbind(return_bed,line)
  }
  return(return_bed)
}

output <- make_windows_bed(qPCR_table, window_size)


write.table(output
            , output_file
            , sep = "\t"
			, col.names = FALSE
			, row.names = FALSE
            , quote = FALSE)
