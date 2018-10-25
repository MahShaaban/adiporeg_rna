
SCRIPTS=scripts
LOG=log

all: dir_tree \
	download_fastq \
	align_reads

# make directory tree
dir_tree:
	test ! -d $(LOG) && mkdir $(LOG) || echo '$(LOG)/ is already there.'

# get fastq files
download_fastq: $(SCRIPTS)/download_fastq.sh runs_test.csv
	sh $(SCRIPTS)/download_fastq.sh &> $(LOG)/download_fastq.out

