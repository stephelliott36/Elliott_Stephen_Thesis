library(ggrepel)
# reads csv matrix, replace with directory for desired file (THIS IS MY DIRECTORY, OTHERS WILL HAVE TO CHANGE)
# note, to write a single backslash in R code, one must write "\\"
xData <- read.csv("C:\\Users\\steph\\OneDrive - Princeton University\\IW\\mva-plots-1\\tests\\testthat\\50_exponential_cols.csv")
yData <- as.matrix(read.csv("C:\\Users\\steph\\OneDrive - Princeton University\\IW\\mva-plots-1\\tests\\testthat\\50_exponential_rows.csv"))
# yData <- as.matrix(read.csv("C:\\Users\\steph\\OneDrive - Princeton University\\IW\\mva-plots-1\\tests\\testthat\\50_exponential.csv"))
# runs orthogonal partial least squares discriminant analysis of the sample 
result <- oplsda(xData, yData, type = "OPLS")

# save result as RData file
save(result, file = "50_exponentialOPLSDA.RData")

# graphs plot loadings
plotLoadings(result)
#PlotLoadSpec(result)