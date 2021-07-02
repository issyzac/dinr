## Simulations in R

## Using the sample command

# Define a Vector
states = c("washington", "Massachussetts", "California")

# Sample with replacement
sample(x = states, size = 10, replace = TRUE)

# Sample without replacement
sample(x = states, size = 2, replace = FALSE)

#Sample from a (normal) distribution
rnorm(n=100)
plot(density(rnorm(n = 1000000)))


## FOR LOOPS

#Example 1 : Coin Tossing
coin <- c("Heads", "Tails")
toss <- c()

for (i in 1:100) {
  toss[i] <- sample(x = coin, size = 1)
}

table(toss)

# Example 2: Sample marital status, income ad state
marital <- c("Married", "Single")
income <- 1:4
results <- matrix(nrow = 100, ncol = 3, data = NA)
colnames(results) <- c("marital", "income", "state")
head(results)

for (i in 1:100) {
  results[i, 1] <- sample(marital, size = 1)
  results[i, 2] <- sample(income, size = 1)
  results[i, 3] <- sample(states, size = 1)
}

#apply table() function for each column
#Used for summarizing a large number of dataset
apply(X = results, MARGIN = 2, FUN = table)


