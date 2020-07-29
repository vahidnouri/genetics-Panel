# genetics-Panel
These codes help you to find panel of different diseases. Panels can be download from diffetent sources including https://panelapp.genomicsengland.co.uk/panels/
which provides the common genes of different disease. With these codes you can merge all of your patients excel files to each other and serach the special genes you need among them. Then you can find the similarity of genes amogst your patients and use for your studies.

# To generate the merged file follow the instruction below:
1.  Use Excel_Merge.R to merge the files and select four columns from each excel file.
2.  Run ADD_Names.R to change head of columns.
3.  Run gene_finder.R to generate a csv file including the file names which contain the specified genes.


