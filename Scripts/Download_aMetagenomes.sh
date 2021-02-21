
#Bash file to run get_SRR_data into every file from SRR_aMetagenomes.txt
#!/usr/bin/bash
cat /pasteur/homes/cduitama/SRR_aMetagenomes.txt | xargs -n 1 bash /pasteur/homes/cduitama/SRA_Downloads/get_SRA_data.sh
