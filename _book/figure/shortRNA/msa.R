library(Biostrings)
library(msa)
library(ggmsa)
library(DECIPHER)

trna <- readRNAStringSet("http://gtrnadb.ucsc.edu/genomes/eukaryota/Mmusc10/mm10-mature-tRNAs.fa")
names(trna) <- trimws(gsub(pattern = ".*_|\\(.*", replacement = "", x = names(trna)))
trna <- trna[grep(pattern = "Leu-CAG-1|Leu-CAG-2", x = names(trna))]
names(trna) <- factor(names(trna))
trna <- DNAStringSet(trna)

dna <- DNAStringSet(substr(trna[1],1,70))
names(dna) <- "Seq"

BrowseSeqs(c(dna,trna),colors=c("#1E90FF", "#32CD32", "#9400D3", "black", "#EE3300"), colorPatterns = 1:70,)


mi <- DNAStringSet(readRNAStringSet("~/Downloads/mature.fa.gz"))

mi <- mi[grep("mmu-let-7g-5p", x = names(mi))]
names(mi) <- "mmu-let-7g-5p"

seqs <- c(mi, substr(mi, 1,21))
names(seqs) <- c("Seq 1", "Seq 2")

BrowseSeqs(c(mi,seqs),colors=c("#1E90FF", "#32CD32", "#9400D3", "black", "#EE3300"),)
