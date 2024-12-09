# dna-methylation-analysis

This analysis highlights methylation changes in the non-small cell lung cancer (NSCLC) cell line A549, comparing its baseline state to a highly metastatic condition.

## Data
Fastq files were acquired from GEO.

| Accession number | Condition |
-------------------|--------------
| [GSM1084238](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM1084238) | normal |
| [GSM1084239](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM1084239) | highly metastatic |

## Preprocessing
### Quality control of raw sequences
QC was done using manual checks and calling FastQC. QC script (`scripts/qc.R`) loads the fastq files, calls FastQC, and outputs reports. 

### Adapter trimming
Illumina TruSeq adapter sequences were removed using Cutadapt Version 4.9.

### Read mapping
Sequences were mapped to hg19 genome using Bismark Version v0.24.2.
