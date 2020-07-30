# Genetics-Panel
These codes help you to find panel of different diseases. Panels can be download from diffetent sources such as https://panelapp.genomicsengland.co.uk/panels/
which provides the common genes of different disease. These codes can merge all of patients excel files to each other and serach the special genes you need among them. Then you can find the similarity of genes amogst your patients. These excel files usually use for NGS such as whole exome sequencing.

# To generate the merged file follow the instruction below:
1.  Use Excel_Merge.R to merge the files and add name of files as a new column to the merged csv file. The name of each file here is equal to the name of each patient.
2.  Run ADD_Names.R to select 15 columns and change head of selected columns.
3.  Run gene_finder.R to generate a csv file including the file names which contain the specified genes.

# Name of columns which are selected in this code:
* Gene: Name of genes.
* Type: Shows if the gene is SNP (Single nucleotide polymorphisms ) or MNP (Multiple nucleotide polymorphisms)
* Change: Shows the changes of the gene
* Effect: Shows how this change can effect the protein
* Depth: Shows depth of nucleotide read
* Chrom: Shows chromosome number which this mutation occurs in it.
* Pos: Shows the position of the mutation in the gene.
* Ref: Nucleotide of reference genome.
* Alt: Alteration of the gene incomparison with the reference genome.
* ClinVar.Name: A name that Clinvar assign to the variants.
* Transcript: 
* Population.AF:
* Protein.Change:
* Zygosity: Shows if the gene is homozygote or heterozygote.
* Patient_name: Name of patient based on the file name.

## Please consider that the name of columns must be the same as I mentioned above, otherwise errors would be occured.

