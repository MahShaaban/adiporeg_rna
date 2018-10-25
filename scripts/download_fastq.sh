#!/bin/bash

test ! -d fastq && mkdir fastq || echo 'fastq/ is already there.'

cat runs_test.csv | cut -d ',' -f11 | xargs -P100 wget -nc -P fastq/

#cat runs.csv | cut -d ',' -f12 | xargs -P100 -n 1 wget -nc -P fastq/
