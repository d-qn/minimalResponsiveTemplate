library(rCharts)

usp = reshape2::melt(USPersonalExpenditure)

usp$date <- as.numeric(as.POSIXct(paste(usp$Var2, '-01-01', sep =""))) * 1000

usp2 <- usp
usp2[,1] <- paste(usp2[,1], "2")
df <- rbind(usp, usp2)

h3 <- hPlot(value ~ date, data = df , type = c('area'), group = 'Var1', stacking = "normal")
h3$plotOptions(area = list(marker = list(enabled = FALSE)))
h3$xAxis(type = 'datetime', dateTimeLabelFormats = list(year = '%Y'))

h3$set(tooltip = list(formatter =
  "#! function(){
  return this.series.name + ' : ' + this.y
  } !#"
))

h3