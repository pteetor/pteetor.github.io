app = function() {
  data = loadData()
  model = fitModel(data)
  summarizeModel(model)
}
