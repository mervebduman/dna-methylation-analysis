# Setup
library(Rqc)
library(fastqcr)
fastqc_install()

# Load files
folder = "./data/"
qcRes=rqc(path = folder, pattern = ".fastq.gz", openBrowser=FALSE)

# Sequence quality per base/cycle
rqcCycleQualityBoxPlot(qcRes)

# Sequence content per base/cycle
rqcCycleBaseCallsLinePlot(qcRes)

# Read frequency plot
rqcReadFrequencyPlot(qcRes)

# Call FASTQC and record the results
fastqc(fq.dir = folder, qc.dir = "./results/fastqc_results")

# View the report rendered by R functions
qc_report(qc.path="./results/fastqc_results", 
          result.file="./results/fastqc_results/reportFile", preview = TRUE)
