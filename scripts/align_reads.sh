#!/bin/bash
# define variables
INDEX='mm10/mm10'
FASTQS=$(ls fastq | cut -d '.' -f1 | grep -v '._[0-9]')
FASTQP=$(ls fastq | cut -d '.' -f1 | grep '._[0-9]' | cut -d '_' -f1 | uniq)

# make directory of the alignment output
test ! -d sam && mkdir sam || echo 'Already exists'

# run bowtie2 on single runs files
for i in $FASTQS; do
  if [ ! -f "sam/$i.sam" ]; then
    hisat2 \
      -p 8 \
      -x $INDEX \
      -U fastq/$i.fastq.gz \
      -S sam/$i.sam
    echo "sam/$i.sam was created."
  fi
done

# run bowtie2 on Paired runs files
for i in $FASTQP; do
  F1=$(printf "fastq/%s_1.fastq.gz" "$i")
  F2=$(printf "fastq/%s_2.fastq.gz" "$i")
  if [ ! -f "sam/$i.sam" ]; then
    hisat2 \
      -p 8 \
      -x $INDEX \
      -1 $F1 -2 $F2 \
      -S sam/$i.sam
    echo "sam/$i.sam was created."
  fi
done
