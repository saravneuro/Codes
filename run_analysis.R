@@ -67,9 +67,13 @@ createSummaryDataset <- function(dataDirectory) {
 }
dataDirectory <- "UCI HAR Dataset"
if (file.exists(subDir)) {
summary <- createSummaryDataset(dataDirectory)
write.table(summary, "tidy.txt")
} else {
stop("The data directory doesn't exists. Please download the data zip file and extract it in the same folder than this script.")
}
if (!file.exists(dataDirectory)) {
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
tmp_file <- "./temp.zip"
download.file(url,tmp_file, method="curl")
unzip(tmp_file, exdir="./")
unlink(tmp_file)
}

summary <- createSummaryDataset(dataDirectory)
write.table(summary, "tidy.txt")
