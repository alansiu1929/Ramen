# GGPLOT For data visualisation
*# Load ggplot2 packge*
```
library(ggplot2)
```

*# Remark: %>% pipeline should be imported from dplyr package first*

###### Find out the highest average rating of ramen by country. Then filter out small sample size by making count size more than 100. Use geom_count to plot the graph.
```
ramen %>%
group_by(country) %>%
mutate(total=n(),avg=mean(stars,na.rm=TRUE))%>%
filter (total >=100) %>%
ggplot(aes(country, avg))+geom_count()
```
![](https://github.com/alansiu1929/Ramen/blob/master/images/Rplot01.png)

According to the graph, we can see Malaysia has the highest rank and Vietnam has the lowest rank.
###### Further investigate by style
```
ramen %>%
group_by (country, style) %>%
mutate(total=n(),avg=mean(stars,na.rm=TRUE))%>%
filter (total >=100) %>%
ggplot(aes(country,avg,col=style))+geom_count()
```
![](https://github.com/alansiu1929/Ramen/blob/master/images/Rplot.png)

According to the graph, we can see within Japan, bowl is more popular than pack and cup. 
###### Then, we may want to investigate if bowl is the most popular worldwide.
```
ramen %>%
group_by(style) %>%
mutate (total=n(),avg=mean(stars,na.rm=TRUE)) %>%
filter (total>=50) %>%
ggplot(aes(style, avg))+geom_count()
```
![](https://github.com/alansiu1929/Ramen/blob/master/images/Rplot02.png)

According to the graph, we can see actually bowl is not the famous style of ramen. Instead, pack is the highest rate for style of ramen.

To conclude, for the better rate of ramen, we should refer to the pack of Malaysian Ramen to further gain idea and insight.
