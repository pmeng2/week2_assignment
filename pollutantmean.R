
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the 
    ## mean; either "sulfate" or "nitrate"
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
#SOLUTION 1
pollutantmean<- function(directory, pollutant, id=1:332){
    directory<- getwd()
    files <- list.files(directory)
    data <- data.frame()
        for(i in id){
            data<- rbind(data, read.csv(files[i]))
        }
    mean(data[ , pollutant], na.rm= TRUE)
}

