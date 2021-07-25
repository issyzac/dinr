## Search the documentation of a function (or package or whatever)
?lm

# Create the dataset
height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
bodymass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)

# make the linear model
fit <- lm(bodymass~height) #Y ~ X

