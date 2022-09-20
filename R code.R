library(tidyverse)
chicken <- read_csv2("Scorings.csv")

colnames(chicken)

#Is the head width related to body weight?                          
a<-ggplot(data = chicken, mapping = aes(x = Weight, y = Head)) +
    geom_point(size= 4,alpha = 0.4, aes(color = Color))  

b<-a + scale_color_manual(breaks = c("Black", "Blue", "NA"),
                        values=c("black", "turquoise", "none"))
b
#b + expand_limits(x=0, y=0)

