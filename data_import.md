# Data import of Ramen from TidyTuesday (supported by R)
## This data is to show how to import market data of Ramen

### Import data by using read.csv('http://.csv')
Assign the name as ramen
```
ramen=read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-04/ramen_ratings.csv')
```

### Check data structure to know the characteristics of variables
```
str(ramen)
```
Results:

'data.frame':	3180 obs. of  6 variables:

 $ review_number: int  3180 3179 3178 3177 3176 3175 3174 3173 3172 3171 ...
 
 $ brand        : Factor w/ 456 levels "1 To 3 Noodles",..: 453 247 9 202 211 243 398 337 328 70 ...
 
 $ variety      : Factor w/ 2971 levels "\"A\" Series Artificial Chicken",..: 2698 2743 1362 2067 936 490 2295 1659 1004 256 ...
 
 
### Check data summary for knowing where majority of data is leaning on
```
summary(ramen)
```
 review_number | brand | variety | style | country | stars
 ------------- | ----- | ------- | ----- | ------- | -----
 Min.   :   1.0   Nissin       : 443   Beef              :   7   Pack      :1832  
 1st Qu.: 795.5   Nongshim     : 110   Chicken           :   7   Bowl      : 612  
 Median :1590.0   Maruchan     : 106   Miso Ramen        :   7   Cup       : 559  
 Mean   :1590.1   Myojo        :  90   Yakisoba          :   7   Tray      : 138  
 3rd Qu.:2384.5   Samyang Foods:  82   Artificial Chicken:   6   Box       :  32  
 Max.   :3180.0   Mama         :  71   Vegetable         :   6   Restaurant:   3  
 NA's   :1        (Other)      :2278   (Other)           :3140   (Other)   :   4  
 Japan        : 532   Min.   :0.000  
 United States: 382   1st Qu.:3.250  
 South Korea  : 357   Median :3.750  
 Taiwan       : 330   Mean   :3.688  
 China        : 207   3rd Qu.:4.500  
 Thailand     : 205   Max.   :5.000  
 (Other)      :1167   NA's   :14    
 
 ### Check first 6 data output
 ```
 head(ramen,6)
 ```
 review_number brand variety style country stars
 
1          3180         Yum Yum     Tem Tem Tom Yum Moo Deng   Cup Thailand  3.75

2          3179      Nagatanien tom Yum Kung Rice Vermicelli  Pack    Japan  2.00

3          3178         Acecook        Kelp Broth Shio Ramen   Cup    Japan  2.50
4          3177 Maison de Coree       Ramen Gout Coco Poulet   Cup   France  3.75
5          3176        Maruchan      Gotsumori Shio Yakisoba  Tray    Japan  5.00
6          3175           Myojo        Chukazanmai Tantanmen   Cup    Japan  3.50
