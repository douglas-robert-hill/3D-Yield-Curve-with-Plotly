# Libraries
library("YieldCurve")
library("plotly")

# Data
data(ECBYieldCurve)

ECBYieldCurve <- data.matrix(ECBYieldCurve)

# Plot 
figure <- plot_ly(z = ECBYieldCurve, type = "surface")

figure <- figure %>% layout(
  title = "European Central Bank 3D Yield Curve",
  scene = list(
    xaxis = list(title = "Maturity",
                 tickmode = "array",
                 nticks = 7,
                 tickvals = c(1, 3, 7, 12, 22, 31), 
                 ticktext = c("3 Month", "1 Year", "5 Year", "10 Year","20 Year", "30 Year")),
    yaxis = list(title = "Date",
                 tickmode = "array",
                 nticks = 6,
                 tickvals = c(2, 234, 490), 
                 ticktext = c("2007", "2008", "2009")),
    zaxis = list(title = "Yield (%)")
  ))

figure

