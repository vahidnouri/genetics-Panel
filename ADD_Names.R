library(openxlsx)
library(readr)


path <- "C:/Users/gen/Documents/R/New_files"

filenames_list <- list.files(path= path, full.names=TRUE)
lapply(filenames_list,function(filename){
  File <- data.frame(read_csv(filename))
  # Use read_tsv for .gz file as below:
  # File <- data.frame(read_tsv(filename))

  File$Patient_name <- substr(filename,start = 30, stop = 50)
  Final <- data.frame(File$Gene, File$Type, File$Change, File$Effect,
                      File$Depth, File$Chrom, File$Pos , File$Ref, 
                      File$Alt,File$ClinVar.Name, File$Transcript,
                      File$Population.AF,
                      File$Protein.Change, File$Zygosity,File$Patient_name
                      )
  names(Final)[names(Final) == "File.Gene"] <- "Gene"
  names(Final)[names(Final) == "File.Type"] <- "Type"
  names(Final)[names(Final) == "File.Change"] <- "Change"
  names(Final)[names(Final) == "File.Effect"] <- "Effect"
  names(Final)[names(Final) == "File.Depth"] <- "Depth"
  names(Final)[names(Final) == "File.Chrom"] <- "Chrom"
  names(Final)[names(Final) == "File.Pos"] <- "Pos"
  names(Final)[names(Final) == "File.Ref"] <- "Ref"
  names(Final)[names(Final) == "File.Alt"] <- "Alt"
  names(Final)[names(Final) == "File.ClinVar.Name"] <- "ClinVar.Name"
  names(Final)[names(Final) == "File.Transcript"] <- "Transcript"
  names(Final)[names(Final) == "File.Population.AF"] <- "Population.AF"
  names(Final)[names(Final) == "File.Protein.Change"] <- "Protein.Change"
  names(Final)[names(Final) == "File.Zygosity"] <- "Zygosity"
  names(Final)[names(Final) == "File.Patient_name"] <- "Patient_name"
  write.csv(Final,filename)

  
})
