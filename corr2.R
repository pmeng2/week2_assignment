corr <- function( directory, threshold = 0) {
        directory <- getwd()
        files <- list.files(directory)
        corr_data <- vector()
        for (i in 1:332){
                data_i<- read.csv(files[i])
                complete_i <- sum(complete.cases(data_i))
                if (complete_i > threshold){
                        data_i_sulfate<- data_i[!is.na(data_i$sulfate), ]
                        data_i_nitrite<- data_i_sulfate[!is.na(data_i_sulfate$nitrate), ]
                        corr_data<- c(corr_data, cor(data_i_nitrite$nitrate,data_i_nitrite$sulfate))
                }
        }
        corr_data
}