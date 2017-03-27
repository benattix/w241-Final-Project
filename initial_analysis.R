# W241 Final Project 
# Fake data generation and initial analyses

library(data.table)

set.seed(1)
rows <- 100
d <- data.table(id = 1:rows) 
d[, ':=' (treat = sample(c(0,1), rows, replace = TRUE),
          location = sample(c(1:20), rows, replace = TRUE),
          times.eating = sample(round(rnorm(rows, mean = 10, sd = 10), 0)),
          person.spend = sample(round(rnorm(rows, mean = 25, sd = 10), 0)),
          base.meal = sample(c(16, 18, 20, 24, 26), rows, replace = TRUE),
          base.drink = sample(c(0, 0, 6, 8, 11, 12), rows, replace = TRUE),
          outcome = sample(c(1:5), rows, replace = TRUE))
  ]
d[, meal.total := base.meal + base.drink]

