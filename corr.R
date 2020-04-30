
  
corr <- function(directory, threshold = 0){
  directory<- getwd()
  files<- list.files(directory)
  correlation<- vector( , length = 0L)
  data_i <-data.frame()
  for(i in 1:332){
    data_i <- read.csv(files[i])
    comp_i<- sum(complete.cases(data_i), na.rm = TRUE)
      if (comp_i > threshold) {
        data_sul<- data_i[!is.na(data_i$sulfate), ]
        data_nit<- data_sul[!is.na(data_sul$nitrate), ]
        corr_i<- cor(data_nit$sulfate, data_nit$nitrate)
        correlation<-c(correlation, corr_i)}
  }
  correlation
}
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    ## NOTE: Do not round the result!
}
    