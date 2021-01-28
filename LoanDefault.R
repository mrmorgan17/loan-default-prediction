##
## Loan Default Prediction
##

## Libraries I need
library(tidyverse)
library(DataExplorer)
library(caret)

# Read in the data
# train <- system.time(vroom::vroom(unzip('train_v2.csv.zip')))
# test <- system.time(vroom::vroom(unzip('test_v2.csv.zip')))

train <- vroom::vroom('train_v2.csv')
test <- vroom::vroom('test_v2.csv')

default <- bind_rows(train, test)

# Missing values
plot_missing(default)
is.na(default) %>% colMeans() %>% 
  round(., 3)
sum(is.na(train) %>% rowMeans() > 0)
