#!/bin/bash

SCRIPTS=scripts
LOG=log

all: dir_tree \
	download_fastq \
	make_index \
	get_annotation \
	align_reads \
	count_features \
	fastqc

# make directory tree
dir_tree:
	test ! -d $(LOG) && mkdir $(LOG) || echo '$(LOG)/ is already there.'

# get fastq files
download_fastq: $(SCRIPTS)/download_fastq.sh runs.csv
	sh $(SCRIPTS)/download_fastq.sh > $(LOG)/download_fastq.out

# make genome index
make_index: $(SCRIPTS)/make_index.sh
	sh $(SCRIPTS)/make_index.sh > $(LOG)/make_index.out

# get genome annotation
get_annotation: $(SCRIPTS)/get_annotation.sh
	sh $(SCRIPTS)/get_annotation.sh > $(LOG)/get_annotation.out

# align reads
align_reads: $(SCRIPTS)/align_reads.sh fastq/* mm10/*
	sh $(SCRIPTS)/align_reads.sh > $(LOG)/align_reads.out

# count featuresc
count_features: $(SCRIPTS)/count_features.sh sam/*
	sh $(SCRIPTS)/count_features.sh > $(LOG)/count_features.out

# quality chekcs
fastqc: $(SCRIPTS)/fastqc.sh fastq/* sam/*
	sh $(SCRIPTS)/fastqc.sh > $(LOG)/fastqc.out
