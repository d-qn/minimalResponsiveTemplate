library(rCharts)

a <- rCharts::Highcharts$new()
a$series(
  list(
    list(
      data = list(
        list(x = 1, y = 1, z = 1, name = "malmo"),
        list(x = 2, y = 2, z = 2, name = "gothenburg"),
        list(x = 3, y = 3, z = 3, name = "stockholm")
      ),
      name = "sweden"
    ),
    list(
      data = list(
        list(x = 4, y = 4, z = 4, name = "oslo")
      ),
      name = "norway"
    )
  )
)
a$tooltip(formatter = "#! function() { return this.point.name; } !#")
a$chart(zoomType = "xy", type = "bubble")
a$plotOptions(bubble = list(dataLabels = list(enabled = T, style = list(textShadow = 'none') ,color = '#A9A9A9', formatter = "#! function() { return this.point.name; } !#")))
a

a$save("hchart_labelledBubble.html")