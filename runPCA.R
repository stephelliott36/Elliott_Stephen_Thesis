library(scales)
library(GGally)
# reads csv matrix, replace with directory for desired file
# note, to write a single backslash in R code, one must write "\\"
data <- read.csv("C:\\Users\\steph\\OneDrive - Princeton University\\IW\\mva-plots-1\\tests\\testthat\\41_square.csv")

# runs principle component analysis of the sample and plots screeplot and cumulative variance
result <- PCA(data, rank = 2, plot = TRUE)

# save result as RData file
save(result, file = "50_exponentialPCA.RData")

# graphs plot loadings
#PlotLoadSpec(result)
plotLoadings(result)