install.packages("rmarkdown")
install.packages("kableExtra")

library(rmarkdown)
---
title: "Assignment 1"
output: html_document
---
  
 ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)

setwd("~/Desktop/Nimish/Columbia MPH/4. Spring 2023/Machine Learning in Epi/Assignment 1")

assignment1 <- read.csv("bcdata_Assignment1.csv")
assignment1

summary(assignment1$Age)
summary(assignment1$Glucose)

summary1 <- assignment1 %>% 
  select_if(is.numeric) %>%
  summarize_all(list(mean = mean, median = median, min = min, max = max))

rmarkdown::render("Ml_Assignment1.Rmd", output_format = "html_document")
