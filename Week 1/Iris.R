library(readr)
iris <- read_csv("iris.csv", col_names = F)
colnames(iris) <- c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Class')

sapplt(iris, class)

iris$class <- as.factor(iris$class)
sapply(iris, class)

install.packages("dpylr")
library(dyplr)

View(iris)
