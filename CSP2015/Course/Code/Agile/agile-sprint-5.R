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
  lm(Sepal.Width ~ Petal.Width + Species, data=appData)
}

summarizeModel = function(model) {
  cat("*** Model Definition ***\n\n")
  print(formula(model), showEnv=FALSE)
  cat("\n")
  
  fstat = summary(model)$fstatistic
  pval = pf(fstat[1], fstat[2], fstat[3], lower.tail=FALSE)
  
  cat("*** Model Statistics ***\n\n")
  cat("F-statistic:", fstat[[1]], "on", fstat[[2]], "and", fstat[[3]], "DF, ")
  cat("p-value:", pval, "\n")
  cat("Adj'ed R-squared:", summary(model)$adj.r.squared, "\n\n")
  
  cat("*** Coefficients ***\n\n")
  print(coef(model))
  cat("\n")
  
  cat("*** Confidence Intervals ***\n\n")
  print(confint(model))
  
  oldpar = par(no.readonly=TRUE)
  par(mfrow=c(2,2))
  plot(model)
  par(oldpar)
  
  # TODO: Write summary to report file, too
}
