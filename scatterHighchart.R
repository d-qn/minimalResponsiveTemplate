library(rCharts)
h1 <- hPlot(Pulse ~ Height, data = MASS::survey, type = "scatter", group = "Exer")
h1$set(tooltip = list(formatter = 
  "#! function(){
  return '<b>haûteur</b>:' + this.x + '<br/>' + 
    '<b>éèéèweä</b>:' + this.y
  } !#"
))

#h1$xAxis(labels = list(style = list(fontSize = '13px', fontFamily = 'Verdana, sans-serif')), replace = F)
h1
h1$save("hchart.html")