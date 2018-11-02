#!/bin/bash
# define variables
FASTQ=$(ls fastq | cut -d '.' -f1)

# make qc fastq output
test ! -d qc.fastq && mkdir qc.fastq || echo 'Already exists'

for i in $FASTQ; do
  F=$(printf "qc.fastq/%s_fastqc.zip" "$i")
  if [ ! -f $F ]; then
    fastqc \
      -t 16 \
      -o qc.fastq/ \
      -f fastq \
      fastq/$i.fastq.gz
  fi
done

# make qc sam output
test ! -d qc.sam && mkdir qc.sam || echo 'Already exists'

SAM=$(ls sam | cut -d '.' -f1)

for i in $SAM; do
  F=$(printf "qc.sam/%s_fastqc.zip" "$i")
  if [ ! -f $F ]; then
    fastqc \
      -t 16 \
      -o qc.sam/ \
      -f sam \
      sam/$i.sam
  fi
done
