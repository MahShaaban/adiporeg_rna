#!/bin/bash
if [ ! -f "mm10/annotation.gtf" ]; then
    wget -o annotation.gtf \
    https://usegalaxy.org/datasets/bbd44e69cb8906b56d4e74ff932f9c50/display?to_ext=gtf
fi
