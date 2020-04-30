
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
complete <- function(directory, id=1:332){
    directory<- getwd()
    files<- list.files(directory)
    data<- data.frame()
    for(i in id){
       complete_data<- sum(complete.cases(read.csv(files[i])), na.rm=TRUE)
       data<- rbind(data,complete_data)
    }
    data_2<- cbind(id, data)
    colnames(data_2)<- c("id","nobs")
    data_2
}
    


complete<- function(directory, id= 1:332) {
    directory <- getwd()
    files<- list.files(directory)
    nobs<- data.frame()
    for (i in id){
        data<- read.csv(files[i])
        nobs <- c(nobs, sum(complete.cases(data)))
    }
    result<- cbind(id, nobs)
    colnames(result)<- c("id", "nobs")
    result
}
    











