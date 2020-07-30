# Genetics-Panel
These codes help you to find panel of different diseases. Panels can be download from diffetent sources such as https://panelapp.genomicsengland.co.uk/panels/
which provides the common genes of different disease. With these codes you can merge all of your patients excel files to each other and serach the special genes you need among them. Then you can find the similarity of genes amogst your patients and use for your studies.

# To generate the merged file follow the instruction below:
1.  Use Excel_Merge.R to merge the files and add name of files as a new column to the merged csv file. The name of each file here is equal to the name of each patient.
2.  Run ADD_Names.R to select 15 columns and change head of selected columns.
3.  Run gene_finder.R to generate a csv file including the file names which contain the specified genes.

# Name of columns which are selected in this code:
* Gene
* Type
* Change
* Effect
* Depth
* Chrom
* Pos
* Ref
* Alt
* ClinVar.Name
* Transcript
* Population.AF
* Protein.Change
* Zygosity
* Patient_name



