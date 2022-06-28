library(readr)
iris <- read_csv("iris.csv", col_names = F)
colnames(iris) <- c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Class')

sapplt(iris, class)

iris$class <- as.factor(iris$class)
sapply(iris, class)

install.packages("dpylr")
library(dyplr)

iris %>% group_by(Class) %>% summarize( Min.Sepal.Length = min(Sepal.Length, na.rm=T),
                                        Max.Sepal.Length = max(Sepal.Length, na.rm=T),
                                        Mean.Sepal.Length = mean(Sepal.Length, na.rm=T),
                                        SD.Sepal.Length = sd(Sepal.Length, na.rm=T))  %>% as.data.frame()

View(iris)
