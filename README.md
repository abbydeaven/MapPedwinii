Order of scripts:

1. Ran P_edwinii_Genome_Index to create FASTA index + BWA index
2. Created accessions by copying file names to a TXT file and removing _Rep*
3. Edited MapData.sh to include correct path to FastQ files and set macs3 parameters for calling TF peaks
     **** note => $GENOME variable caused repeated failures; changed MapData.sh to contain direct path to P.edwinii genome index rather than setting variable in config.txt
4. Submitted the following command from MapCUTnRunV2.0 folder:
     sh submitMappingJob.sh accessions.txt
