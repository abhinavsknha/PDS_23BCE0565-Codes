# Step 1: Install and load required package
# Install ggplot2 (run only once if not installed)
# install.packages("ggplot2")

# Load the ggplot2 library
library(ggplot2)

# Step 2: Create the dataset
# Create a data frame for plant growth data
plant_data <- data.frame(
  Plant_ID = 1:5,                              # Unique plant identifiers
  Growth_Rate = c(3.2, 1.8, 2.6, 0.9, 3.8),    # Growth values
  Condition_Label = c("Sunny", "Shade", "Rainy", "Drought", "Cloudy")  # Conditions
)

# Display the dataset
print(plant_data)

# Step 3: Create the scatter plot
# Plot Plant_ID on x-axis and Growth_Rate on y-axis
ggplot(data = plant_data, aes(x = Plant_ID, y = Growth_Rate)) +
  
  # Add points with customization
  geom_point(color = "dodgerblue", size = 4) +
  
  # Add text labels below the points
  geom_text(aes(label = Condition_Label), 
            vjust = 1.5, 
            color = "darkorange") +
  
  # Add title and axis labels
  labs(
    title = "Scatter Plot of Plant Growth Data",
    x = "Plant ID",
    y = "Growth Rate"
  )
