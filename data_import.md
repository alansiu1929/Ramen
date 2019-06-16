# Data import of Ramen from TidyTuesday (supported by R)
## This data is to show how to import market data of Ramen

### Import data by using read.csv('http://.csv')
Assign the name as ramen
```
ramen=read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-04/ramen_ratings.csv')
```

###### Check data structure to know the characteristics of variables
```
str(ramen)
```
**Results:**
![](https://raw.githubusercontent.com/alansiu1929/Ramen/master/images/head_ramen.png)
 
###### Check data summary for knowing where majority of data is leaning on
```
summary(ramen)
```
 
###### Check first 6 data output
```
head(ramen,6)
```

