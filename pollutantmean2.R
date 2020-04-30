pollutantmean <- function(directory, pollutant, id = 1:332){
        directory <- getwd()
        files<- list.files(directory)
        data <- data.frame()
        for (i in id) {
                data_i <- read.csv(files[i])
                data <- rbind(data, data_i)
        }
        mean(data[ ,pollutant], na.rm = TRUE)
}