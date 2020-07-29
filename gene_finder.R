merge_file_name <- "C:/Users/gen/Documents/R/Merge/merged_file.csv"
df <- read.csv(merge_file_name)
genes <- c("HLA","ACE2")
for (i in genes){
  ans <- df[df$Gene == i, ]  
}


answer_file <- "C:/Users/gen/Documents/R/Merge/answer_file.csv"

write.csv(ans,answer_file)
print(ans$Patient_name)
factor(ans$Patient_name)
View(ans)

# Remove df from memory

rm(df)


