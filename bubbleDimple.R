library(rCharts)

#get data used by dimple for all of its examples as a first test
data <- read.delim(
"http://pmsi-alignalytics.github.io/dimple/data/example_data.tsv"
)
#eliminate . to avoid confusion in javascript
colnames(data) <- gsub("[.]","",colnames(data))

#example 23 Vertical Bubble Lollipop
d1 <- dPlot(
	x = "Month",
	y = "UnitSales",
	z = "OperatingProfit",
	groups = "Channel",
	data = subset(data,	Date %in% c("01/07/2012","01/08/2012","01/09/2012","01/10/2012","01/11/2012","01/12/2012")),
	type = "bubble",
	width="100%"
)
d1$xAxis( type = "addCategoryAxis", orderRule = "Date" )
d1$yAxis( type = "addMeasureAxis" )
d1$zAxis( type = "addMeasureAxis" )
d1$legend(
x = 200,
y = 10,
width = 500,
height = 20,
horizontalAlign = "right"
)
d1

#d1$save("dindex.html")