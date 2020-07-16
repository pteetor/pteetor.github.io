app = function() {
  data = loadData()
  model = fitModel(data)
  summarizeModel(model)
}

loadData = function() {
  # TODO: Load real data
  iris
}

fitModel = function(appData) {
  # TODO: Explore other models
  lm(Sepal.Width ~ Petal.Width, data=appData)
}

summarizeModel = function(model) {
  cat("*** Model Summary ***\n\n")
  cat("F-statistic:", summary(model)$fstatistic, "\n")
  cat("Adj'ed R-squared:", summary(model)$adj.r.squared, "\n")
  print(model)
  
  oldpar = par(no.readonly=TRUE)
  par(mfrow=c(2,2))
  plot(model)
  par(oldpar)
  
  # TODO: Write summary to report file, too
}
