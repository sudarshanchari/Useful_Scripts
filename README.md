# Repository of small scripts that are useful for ngs and other quick computing
These scripts and/or one-liners are ones that I use routinely for making life easier.


### Downloading and converting SRA files
#### Batch download SRA files
First you need the file list. Go to https://www.ncbi.nlm.nih.gov/<<<SRA ID>>> (replace "<<<SRA ID>>>" with the actual ID) Top-right, click on "Send To", "File", "Accession List".
This creates an accession list text file, then
  
```
prefetch $(<SraAccList.txt) or fastq-dump --gzip $(</path_to/SRR_Acc_List.txt) (can combine it with other fastq-dump functionality)

# single
fastq-dump -I -F --split-files filename.sra # -F keeps the readname as what the original was i.e. not modified/ appended SRA database name

# multiple
for i in *.sra; do fastq-dump -I -F --split-files ${i}; done &

```
