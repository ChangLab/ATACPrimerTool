#!/usr/bin/env python

import sys
import os

atac_dir = sys.argv[1]

for yaml_file in os.listdir(os.path.join(atac_dir, "pipelines/")):
    if yaml_file.endswith("_config.yaml"):
        with open(yaml_file, "r") as yaml:
            with open(yaml_file.replace("_config", ""), "w") as yaml_out:
                for line in yaml:
                    line = line.replace("<ATACqPCRdir>", atac_dir)
                    yaml_out.write(line)
for file in os.listdir(os.path.join(atac_dir, "pipelines/")):
    os.chmod(file, 0755)


    
