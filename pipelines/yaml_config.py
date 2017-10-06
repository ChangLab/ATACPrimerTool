#!/usr/bin/env python

import sys
import os

atac_dir = sys.argv[1]

for yaml_file in os.listdir(os.path.join(atac_dir, "pipelines/")):
    if yaml_file.endswith("_config.yaml"):
	yaml_file = os.path.join(atac_dir, "pipelines/" + yaml_file)
        with open(yaml_file, "r") as yaml:
            with open(yaml_file.replace("_config", ""), "w") as yaml_out:
                for line in yaml:
                    line = line.replace("<APTdir>", atac_dir.rstrip("/"))
                    yaml_out.write(line)
for file in os.listdir(os.path.join(atac_dir, "pipelines/")):
    file = os.path.join(atac_dir, "pipelines/" + file)
    os.chmod(file, 0755)


    
