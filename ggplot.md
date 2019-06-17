# GGPLOT For data visualisation
### Import ggplot2 package
```
library(ggplot2)
```

```
ramen %>%
ggplot(aes(x=type, y=stars))+geom_point(na.rm=TRUE)

```
*Remark: %>% pipeline should be imported from dplyr package first*
