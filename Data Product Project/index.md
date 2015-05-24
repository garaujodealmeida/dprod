---
title       : Data Product Project
subtitle    : Data Science Specialization
author      : Gabriel Almeida
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Data product Project

### Number of poor houses in Brazil

The proposital is evaluate the variation os brazilians poor house since 1976. Data is download from IPEA web site and plotted a regression line. 

--- .class #id 

## Data

### Example of raw data and summary:

```
##   Date Number.of.poor.houses
## 1 1976               8120382
## 2 1977               6735898
## 3 1978               8713473
## 4 1979               7145330
## 5 1981               8619740
```

```
##       Date      Number.of.poor.houses
##  Min.   :1976   Min.   : 6223185     
##  1st Qu.:1985   1st Qu.: 8713473     
##  Median :1995   Median :10909145     
##  Mean   :1994   Mean   :10420361     
##  3rd Qu.:2004   3rd Qu.:12113358     
##  Max.   :2013   Max.   :13844173
```

--- .class #id 

## Graphic

It's a simple plot command (year x number of houses) and added a regression line.


```r
plot(data2$Date ,data2$Number.of.poor.houses/1000000 ,type = "l", xlab="YEAR", ylab="NUMBER OF HOUSES (MILLIONS)")
            regline <- lm(data2$Number.of.poor.houses/1000000 ~ data2$Date, data=data)
            abline(regline, col="red")
```

--- .class #id 

## Slider 

Slider helps to evaluated how the number of poors houses and the regression variated over the years. 


```r
sliderInput('year', 'Select bottom year',value=1990, min=1976 ,max=2009 , step=1),
```





