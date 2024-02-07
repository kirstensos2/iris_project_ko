library(dplyr)
library(ggplot2)

iris_data <- iris

iris_data <-read.csv('raw_data/iris.csv')

# subsetting data
setosa_subset <- iris_data |>
  filter(Species == "setosa")

# cool analysis
model_setosa <- lm(Sepal Length ~ Petal.Length, data = setosa_subset)