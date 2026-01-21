# Time Vector (1 to 60 minutes)

time <- 1:60

# Sensor Readings (60 different values each)

temperature <- c(
  26, 26.5, 27, 27.4, 27.9, 28.3, 28.8, 29.2, 29.7, 30.1,
  30.6, 31, 31.4, 31.9, 32.3, 32.8, 33.2, 33.6, 34, 34.4,
  34.8, 35.2, 35.6, 36, 36.3, 36.6, 36.9, 37.2, 37.4, 37.6,
  37.8, 38, 37.7, 37.4, 37, 36.6, 36.2, 35.8, 35.3, 34.9,
  34.4, 33.9, 33.4, 32.9, 32.4, 31.9, 31.4, 30.9, 30.4, 29.9,
  29.4, 28.9, 28.4, 27.9, 27.4, 26.9, 26.4, 26, 25.6, 25.2
)

humidity <- c(
  48, 47.5, 47, 46.6, 46.1, 45.6, 45, 44.4, 43.8, 43.2,
  42.6, 42, 41.4, 40.8, 40.2, 39.6, 39, 38.4, 37.8, 37.2,
  36.6, 36, 35.4, 34.8, 34.2, 33.6, 33, 32.5, 32, 31.5,
  31, 30.6, 30.2, 30, 30.3, 30.7, 31.1, 31.6, 32.1, 32.7,
  33.3, 33.9, 34.5, 35.1, 35.7, 36.3, 36.9, 37.5, 38.1, 38.7,
  39.3, 39.9, 40.5, 41.1, 41.7, 42.3, 42.9, 43.5, 44.1, 44.7
)

pressure <- c(
  1015, 1014.8, 1014.6, 1014.4, 1014.2, 1014, 1013.8, 1013.6, 1013.4, 1013.2,
  1013, 1012.8, 1012.6, 1012.4, 1012.2, 1012, 1011.8, 1011.6, 1011.4, 1011.2,
  1011, 1010.8, 1010.6, 1010.4, 1010.2, 1010, 1009.8, 1009.6, 1009.4, 1009.2,
  1009, 1009.1, 1009.3, 1009.5, 1009.7, 1009.9, 1010.1, 1010.3, 1010.5, 1010.7,
  1010.9, 1011.1, 1011.3, 1011.5, 1011.7, 1011.9, 1012.1, 1012.3, 1012.5, 1012.7,
  1012.9, 1013.1, 1013.3, 1013.5, 1013.7, 1013.9, 1014.1, 1014.3, 1014.5, 1014.7
)

# Average Sensor Values

cat("Average Temperature:", mean(temperature), "°C\n")
cat("Average Humidity:", mean(humidity), "%\n")
cat("Average Pressure:", mean(pressure), "hPa\n")

# Critical Time Intervals

critical_intervals <- time[temperature > 30 & humidity < 40]
cat("Critical intervals:", critical_intervals, "\n")

# Plots

plot(time, temperature, type = "l",
     xlab = "Time (minutes)",
     ylab = "Temperature (°C)",
     main = "Temperature Over Time")

plot(time, humidity, type = "l",
     xlab = "Time (minutes)",
     ylab = "Humidity (%)",
     main = "Humidity Over Time")

plot(time, pressure, type = "l",
     xlab = "Time (minutes)",
     ylab = "Pressure (hPa)",
     main = "Pressure Over Time")
