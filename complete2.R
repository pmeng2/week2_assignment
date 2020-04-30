complete <- function (directory, id = 1:332){
        directory <- getwd()
        nobs <- vector()
        files <- list.files(directory)
        for (i in id){
                data_i <- read.csv(files[i])
                nobs <- c(nobs, sum(complete.cases(data_i)))
        }
        complete_data <- cbind(id, nobs)
        colnames(complete_data) <- c("id","nobs")
        complete_data
}