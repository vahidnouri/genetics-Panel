install.packages("openxlsx", dependencies=TRUE)
library(openxlsx)

path <- "C:/Users/gen/Documents/R/CSV"
merge_file_name <- "C:/Users/gen/Documents/R/Merge/merged_file.csv"

filenames_list <- list.files(path= path, full.names=TRUE)

All <- lapply(filenames_list,function(filename){
  print(paste("Merging",filename,sep = ","))
  read.csv(filename)
})

df <- do.call(rbind.data.frame, All)
df <- df[, -1]
write.csv(df,merge_file_name)


# Remove df to make memory free

rm(df)