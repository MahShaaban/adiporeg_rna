#!/bin/bash
# define variables
SAM=$(ls sam | cut -d '.' -f1)

# make directory of bam.sorted output
test ! -d counts && mkdir counts || echo 'Already exists'

# sort and index bam files
for i in $SAM; do
  if [ ! -f "counts/$i.txt" ]; then
    featureCounts \
    -T 8 \
    -F GTF \
    -t exon \
    -g gene_id \
    -a ./mm10/annotation.gtf \
    -o ./counts/$i.txt \
    ./sam/$i.sam
    echo "counts/$i.txt was created."
  fi
done
