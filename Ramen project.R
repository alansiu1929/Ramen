ramen %>%
group_by(country) %>%
mutate(total=n(),avg=mean(stars,na.rm=TRUE))%>%
filter (total >=100) %>%
ggplot(aes(country, avg))+geom_count()

