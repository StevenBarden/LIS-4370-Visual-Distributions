# Load necessary libraries
library(ggplot2)
library(gridExtra)  # For grid visualization

# Load dataset (using mtcars as provided)
data(mtcars)

# Create scatter plots for distribution analysis
p1 <- ggplot(mtcars, aes(x=mpg, y=hp)) + 
  geom_point(color="blue") + 
  ggtitle("MPG vs HP")

p2 <- ggplot(mtcars, aes(x=mpg, y=wt)) + 
  geom_point(color="red") + 
  ggtitle("MPG vs Weight")

p3 <- ggplot(mtcars, aes(x=hp, y=wt)) + 
  geom_point(color="green") + 
  ggtitle("HP vs Weight")

p4 <- ggplot(mtcars, aes(x=mpg, y=disp)) + 
  geom_point(color="purple") + 
  ggtitle("MPG vs Displacement")

# Arrange the scatter plots in a grid for better comparison
grid.arrange(p1, p2, p3, p4, ncol=2, nrow=2)

# Save the plot to a file
ggsave("distribution_analysis.png", width=10, height=8)
