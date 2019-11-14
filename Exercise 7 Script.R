#Exercise 7
#Question 1
#use iris.csv as example dataframe
odd_rows <- function(df){
  seq(1, nrow(df),2)
}
#usage
oddrows(iris.df)


#Question 2
#return number of observations for a given species in the data set
species_obs <- function(species){
  species.subset <- subset(iris.df, iris.df$Species == species)
  nrow(species.subset)
}
#usage: species_obs("setosa")


#return df with flowers with sepal.width greater than value specified by user
sepal.width_subset <- function(width){
  width_subset <- subset(iris.df, iris.df$Sepal.Width > width)
  return(width_subset)
}
#usage
sepal.width_subset(2.3)

#write data for given species into comma delimited file with given species name as file name
species.file <- function(species_type){
    species.subset <- subset(iris.df, iris.df$Species == species_type)
    write.csv(species.subset, file = paste(species_type,".csv"))
  }
#usage: species.file("setosa")



