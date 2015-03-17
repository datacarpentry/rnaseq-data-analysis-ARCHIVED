#!/bin/bash
export bdge_bowtie_PATH=/opt/RNA-Seq/bin/bowtie2-2.2.1
export bdge_tophat_PATH=/opt/RNA-Seq/bin/tophat-2.0.11.Linux_x86_64
export bdge_samtools_PATH=/opt/RNA-Seq/bin/samtools-0.1.19:/opt/RNA-Seq/bin/samtools-0.1.19/bcftools:/opt/RNA-Seq/bin/samtools-0.1.19/misc
export PATH=$bdge_bowtie_PATH:$bdge_samtools_PATH:$bdge_tophat_PATH:$PATH

if [ ! -d "/media/data/Data" ]; then mkdir "/media/data/Data"; fi
if ls "/media/data/Data"/*.count &> /dev/null; then rm '/media/data/Data'/*.count ; fi
if [ ! -d tmp ]; then mkdir tmp; fi

if [ -f tmp/log.txt ]; then rm tmp/log.txt; fi
touch tmp/log.txt

echo bowtie: /opt/RNA-Seq/bin/bowtie2-2.2.1 >> tmp/log.txt
echo tophat: /opt/RNA-Seq/bin/tophat-2.0.11.Linux_x86_64 >> tmp/log.txt
echo samtools: /opt/RNA-Seq/bin/samtools-0.1.19 >> tmp/log.txt
echo HTSeq: `python -c "import HTSeq; print HTSeq.__version__"` >> tmp/log.txt

# ctl1
echo ctl1 `date +'%Y-%m-%d %T'` >> tmp/log.txt
echo ctl1
tophat2 --no-coverage-search -p 1 -o "ctl1" "/home/goncalo/Code/annotations/chr4" ctl1.fastq 
samtools sort -n "ctl1/accepted_hits.bam" "tmp/ctl1_sn"
samtools view -o "tmp/ctl1_sn.sam" "tmp/ctl1_sn.bam"
python -m HTSeq.scripts.count -s no -a 10 "tmp/ctl1_sn.sam" "/home/goncalo/Code/annotations/Homo_sapiens.GRCh37.63.gtf" > "/media/data/Data/ctl1.count"

echo
# ctl2
echo ctl2 `date +'%Y-%m-%d %T'` >> tmp/log.txt
echo ctl2
tophat2 --no-coverage-search -p 1 -o "ctl2" "/home/goncalo/Code/annotations/chr4" ctl2.fastq 
samtools sort -n "ctl2/accepted_hits.bam" "tmp/ctl2_sn"
samtools view -o "tmp/ctl2_sn.sam" "tmp/ctl2_sn.bam"
python -m HTSeq.scripts.count -s no -a 10 "tmp/ctl2_sn.sam" "/home/goncalo/Code/annotations/Homo_sapiens.GRCh37.63.gtf" > "/media/data/Data/ctl2.count"

echo
# ctl3
echo ctl3 `date +'%Y-%m-%d %T'` >> tmp/log.txt
echo ctl3
tophat2 --no-coverage-search -p 1 -o "ctl3" "/home/goncalo/Code/annotations/chr4" ctl3.fastq 
samtools sort -n "ctl3/accepted_hits.bam" "tmp/ctl3_sn"
samtools view -o "tmp/ctl3_sn.sam" "tmp/ctl3_sn.bam"
python -m HTSeq.scripts.count -s no -a 10 "tmp/ctl3_sn.sam" "/home/goncalo/Code/annotations/Homo_sapiens.GRCh37.63.gtf" > "/media/data/Data/ctl3.count"

echo
# uvb1
echo uvb1 `date +'%Y-%m-%d %T'` >> tmp/log.txt
echo uvb1
tophat2 --no-coverage-search -p 1 -o "uvb1" "/home/goncalo/Code/annotations/chr4" uvb1.fastq 
samtools sort -n "uvb1/accepted_hits.bam" "tmp/uvb1_sn"
samtools view -o "tmp/uvb1_sn.sam" "tmp/uvb1_sn.bam"
python -m HTSeq.scripts.count -s no -a 10 "tmp/uvb1_sn.sam" "/home/goncalo/Code/annotations/Homo_sapiens.GRCh37.63.gtf" > "/media/data/Data/uvb1.count"

echo
# uvb2
echo uvb2 `date +'%Y-%m-%d %T'` >> tmp/log.txt
echo uvb2
tophat2 --no-coverage-search -p 1 -o "uvb2" "/home/goncalo/Code/annotations/chr4" uvb2.fastq 
samtools sort -n "uvb2/accepted_hits.bam" "tmp/uvb2_sn"
samtools view -o "tmp/uvb2_sn.sam" "tmp/uvb2_sn.bam"
python -m HTSeq.scripts.count -s no -a 10 "tmp/uvb2_sn.sam" "/home/goncalo/Code/annotations/Homo_sapiens.GRCh37.63.gtf" > "/media/data/Data/uvb2.count"

echo
# uvb3
echo uvb3 `date +'%Y-%m-%d %T'` >> tmp/log.txt
echo uvb3
tophat2 --no-coverage-search -p 1 -o "uvb3" "/home/goncalo/Code/annotations/chr4" uvb3.fastq 
samtools sort -n "uvb3/accepted_hits.bam" "tmp/uvb3_sn"
samtools view -o "tmp/uvb3_sn.sam" "tmp/uvb3_sn.bam"
python -m HTSeq.scripts.count -s no -a 10 "tmp/uvb3_sn.sam" "/home/goncalo/Code/annotations/Homo_sapiens.GRCh37.63.gtf" > "/media/data/Data/uvb3.count"

echo
echo completed `date +'%Y-%m-%d %T'` >> tmp/log.txt
