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
  # TODO: Create customized summary
  print(summary(model))
  
  ### Added during Show 'n' Tell
  ### plot(model)
  
  # TODO: Write summary to report file, too
}
