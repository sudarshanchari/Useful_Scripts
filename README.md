# Repository of small scripts that are useful for ngs and other quick computing
These scripts and/or one-liners are ones that I use routinely for making life easier.


#### Batch download SRA files
- SRA tools can be either obtained from NCBI (https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/) or via conda (conda install sra-tools)
- In order to download multiple files, you need to have a list. Go to https://www.ncbi.nlm.nih.gov/<SRA ID> (replace "<SRA ID>" with the actual ID) On the top-right, click on "Send To", "File", "Accession List".
This creates an accession list text file, then
  
```
prefetch $(<SraAccList.txt) or fastq-dump --gzip $(</path_to/SRR_Acc_List.txt) (can combine it with other fastq-dump functionality)

# single
fastq-dump -I -F --split-files filename.sra # -F keeps the readname as what the original was i.e. not modified/ appended SRA database name

# multiple
for i in *.sra; do fastq-dump -I -F --split-files ${i}; done &

```

### Screen Command
Very useful for big downloads which may not be possible continuously and more..

```
# for new session and run your large program
screen 
wget <a lot of large files>

# detach screen.. but your program will continue to run in the background even if you're disconnected
Ctrl-a d 

# reattach screen.. for whatever you want to do next
screen -r 

# to list all of the different screen sessions you may have started
screen -ls (or screen -list)

# to kill a screen session completely
screen -X -S <session_ID_you_want_to kill> quit

#Alternatively you can reattach the screen session and type 
ctrl a 

#and then type 
:quit

```

### 
