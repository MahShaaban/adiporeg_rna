# adiporeg_rna

Collect, process and quality control RNA-sequencing (RNA-Seq) data from differentiating 3T3-L1. Related repositories to collect and process other kinds of data are [adiporeg_dhs](https://github.com/MahShaaban/adiporeg_dhs) and [adiporeg_chip](https://github.com/MahShaaban/adiporeg_chip). The processed data are further analyzed in repositories such as [adiporeg](https://github.com/MahShaaban/adiporeg)

This repository aims to detail the following:
1. The search strategy
2. The collected data
3. The pre-processing and the processing of the raw data

## 1. The search strategy

The term "3T3-L1" was used to search the NCBI **SRA** repository. The results were sent to the **run selector**. 1,176 runs were viewed. The runs were faceted by **Assay Type** and the "rna-seq" which resulted in 323 runs. Only 98 samples from 16 different studies were included after being manually reviewed to fit the following criteria:
* The raw data is available from GEO and has a GEO identifier (GSM#)
* The raw data is linked to a published publicly available article
* The protocols for generating the data sufficiently describe the origin of the cell line, the differentiation medium and the time points when the samples were collected. 
* In case the experimenal designs included treatment other than the differentiation medias, the control (non-treated) samples were included.

Note: The data quality and the platform discrepencies are not inluded in these criteria

## 2. The collected data

### 2.1 Sample table

| Stage | Time (hours) | Samples |
|-------|--------------|---------|
| Early | -96          | 1       |
|       | -48          | 6       |
|       | 0            | 22      |
|       | 1            | 1       |
|       | 2            | 3       |
|       | 4            | 7       |
|       | 6            | 1       |
|       | 10           | 2       |
|       | 24           | 8       |
|       | 28           | 1       |
|       | 48           | 18      |
| Late  | 4            | 2       |
|       | 96           | 2       |
|       | 120          | 1       |
|       | 144          | 4       |
|       | 168          | 7       |
|       | 192          | 8       |
|       | 240          | 4       |

### 2.2 Run table

All samples has single runs.

| Sequencer Model             | Runs |
|-----------------------------|------|
| Illumina Genome Analyzer II | 3    |
| Illumina HiSeq 1500         | 20   |
| Illumina HiSeq 2000         | 47   |
| Illumina HiSeq 2500         | 39   |
| Ion Torrent Proton          | 4    |
| NextSeq 500                 | 6    |

| Library Type | Runs |
|--------------|------|
| PAIRED       | 30   |
| SINGLE       | 68   |

### 2.3 Studies 

[1] H. Al Adhami, B. Evano, A. Le Digarcher, et al. “A systems-level approach to parental genomic
imprinting: The imprinted gene network includes extracellular matrix genes and regulates cell cycle
exit and differentiation”. In: _Genome Research_ 25.3 (Mar. 2015), pp. 353-367. ISSN: 15495469. DOI:
10.1101/gr.175919.114. <URL: http://www.ncbi.nlm.nih.gov/pubmed/25614607
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC4352888
http://genome.cshlp.org/lookup/doi/10.1101/gr.175919.114>.

[2] A. S. B. Brier, A. Loft, J. G. Madsen, et al. “The KDM5 family is required for activation of
pro-proliferative cell cycle genes during adipocyte differentiation”. In: _Nucleic Acids Research_
45.4 (2017), pp. 1743-1759. ISSN: 13624962. DOI: 10.1093/nar/gkw1156. eprint: 1611.06654.

[3] R. Brunmeir, J. Wu, X. Peng, et al. “Comparative Transcriptomic and Epigenomic Analyses Reveal
New Regulators of Murine Brown Adipogenesis”. In: _PLoS Genetics_ 12.12 (Dec. 2016), p. e1006474.
ISSN: 15537404. DOI: 10.1371/journal.pgen.1006474.

[4] D. A. Buchner, A. Charrier, E. Srinivasan, et al. “Zinc finger protein 407 (ZFP407) regulates
insulin-stimulated glucose uptake and glucose transporter 4 (Glut4) mRNA”. In: _Journal of
Biological Chemistry_ 290.10 (Mar. 2015), pp. 6376-6386. ISSN: 1083351X. DOI:
10.1074/jbc.M114.623736. <URL: http://www.ncbi.nlm.nih.gov/pubmed/25596527
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC4358273>.

[5] N. Chaudhary, E. Gonzalez, S. H. Chang, et al. “Adenovirus Protein E4-ORF1 Activation of PI3
Kinase Reveals Differential Regulation of Downstream Effector Pathways in Adipocytes”. In: _Cell
Reports_ 17.12 (2016), pp. 3305-3318. ISSN: 22111247. DOI: 10.1016/j.celrep.2016.11.082. eprint:
15334406.

[6] X. Chen, I. Ayala, C. Shannon, et al. “The diabetes gene and wnt pathway effector TCF7L2
regulates adipocyte development and function”. In: _Diabetes_ 67.4 (2018), pp. 554-568. ISSN:
1939327X. DOI: 10.2337/db17-0318.

[7] D. Duteil, E. Metzger, D. Willmann, et al. “LSD1 promotes oxidative metabolism of white adipose
tissue”. In: _Nature Communications_ 5.May (Jun. 2014), p. 4093. ISSN: 20411723. DOI:
10.1038/ncomms5093. <URL: http://www.nature.com/doifinder/10.1038/ncomms5093>.

[8] G. E. Lim, T. Albrecht, M. Piske, et al. “14-3-3$\zeta$ coordinates adipogenesis of visceral
fat”. In: _Nature Communications_ (2015). ISSN: 20411723. DOI: 10.1038/ncomms8671.

[9] K. A. Lo, A. Labadorf, N. J. Kennedy, et al. “Analysis of In Vitro Insulin-Resistance Models and
Their Physiological Relevance to InVivo Diet-Induced Adipose Insulin Resistance”. In: _Cell Reports_
5.1 (Oct. 2013), pp. 259-270. ISSN: 22111247. DOI: 10.1016/j.celrep.2013.08.039. <URL:
http://www.ncbi.nlm.nih.gov/pubmed/24095730
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC3874466>.

[10] G. Maroni, V. A. Tkachuk, A. Egorov, et al. “Prep1 prevents premature adipogenesis of
mesenchymal progenitors”. In: _Scientific Reports_ 7.1 (Nov. 2017), p. 15573. ISSN: 20452322. DOI:
10.1038/s41598-017-15828-1.

[11] Y. Park, L. Wang, A. Giampietro, et al. “Distinct Roles of Transcription Factors KLF4, Krox20,
and Peroxisome Proliferator-Activated Receptor g in Adipogenesis”. In: _Molecular and Cellular
Biology_ 37.2 (2017), pp. e00554-16. ISSN: 0270-7306. DOI: 10.1128/MCB.00554-16. <URL:
http://mcb.asm.org/lookup/doi/10.1128/MCB.00554-16>.

[12] K. W. Ryu, T. Nandu, J. Kim, et al. “Metabolic regulation of transcription through
compartmentalized NAD+biosynthesis”. In: _Science_ 360.6389 (2018). ISSN: 10959203. DOI:
10.1126/science.aan5780.

[13] R. Siersbæk, S. Baek, A. Rabiee, et al. “Molecular architecture of transcription factor
hotspots in early adipogenesis”. In: _Cell Reports_ 7.5 (Jun. 2014), pp. 1434-1442. ISSN: 22111247.
DOI: 10.1016/j.celrep.2014.04.043.

[14] R. Siersbæk, J. G. S. Madsen, B. M. Javierre, et al. “Dynamic Rewiring of Promoter-Anchored
Chromatin Loops during Adipocyte Differentiation”. In: _Molecular Cell_ 66.3 (2017), pp. 420-435.e5.
ISSN: 10974164. DOI: 10.1016/j.molcel.2017.04.010.

[15] D. You, E. Nilsson, D. E. Tenen, et al. “Dnmt3a is an epigenetic mediator of adipose insulin
resistance”. In: _eLife_ 6 (2017). ISSN: 2050084X. DOI: 10.7554/eLife.30766.

[16] X. Zhao, Y. Yang, B. F. Sun, et al. “FTO-dependent demethylation of N6-methyladenosine
regulates mRNA splicing and is required for adipogenesis”. In: _Cell Research_ 24.12 (Dec. 2014),
pp. 1403-1419. ISSN: 17487838. DOI: 10.1038/cr.2014.151.

## 3. The pre-processing and the processing of the raw data
