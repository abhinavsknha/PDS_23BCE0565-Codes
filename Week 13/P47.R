# Step 1: Install and load required packages
#install.packages("ggplot2")
#install.packages("plotly")

library(ggplot2)
library(plotly)

# Step 2: Load the Iris dataset
data("iris")

# Display dataset
print(head(iris))

# Step 3: Static Visualization using ggplot2
# Create scatter plot with color based on Species
p <- ggplot(data = iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point(size = 2) +
  labs(
    title = "Static Scatter Plot of Iris Dataset",
    x = "Sepal Width",
    y = "Petal Width"
  )

# Display static plot
print(p)

# Step 4: Convert static plot to interactive plot
interactive_plot <- ggplotly(p)

# Display interactive plot
interactive_plot

# Step 5: Create interactive plot directly using plot_ly
plot_ly(
  data = iris,
  x = ~Sepal.Width,
  y = ~Petal.Width,
  color = ~Species,
  type = "scatter",
  mode = "markers"
) %>%
  layout(
    title = "Iris Data Set Visualization",
    xaxis = list(title = "Sepal Width", ticksuffix = " cm"),
    yaxis = list(title = "Petal Width", ticksuffix = " cm")
  )

