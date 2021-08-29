# Comparison of Chart Libraries for SwiftUI

--------

Read the entire blog post _including images_ on [jannikarndt.de](https://www.jannikarndt.de/blog/2021/08/comparison_of_chart_libraries_for_swiftui/)!

--------

I want to add charts to my SwiftUI iOS App, [Zettl](https://zettl.jannikarndt.de). For that, I am going to compare the following libraries:

* [ivanschuetz/SwiftCharts](https://github.com/ivanschuetz/SwiftCharts)
* [denniscm190/stock-charts](https://github.com/denniscm190/stock-charts)
* [spacenation/swiftui-charts](https://github.com/spacenation/swiftui-charts)
* [AppPear/ChartView](https://github.com/AppPear/ChartView)
* [danielgindi/Charts](https://github.com/danielgindi/Charts/)


## Requirements

My needs are

* *bar charts* for categorial data. Extra: I need images as labels.
* *line charts* for time-scale data. With multiple lines. Bonus points if I don't have to care about the time distribution, i.e. can enter timestamps and they are spread correctly.
* *pie charts* for relative comparisons. Here, the magic lies in good annotations.


## SwiftCharts

* URL: https://github.com/ivanschuetz/SwiftCharts
* License: Apache 2
* [Maturity](https://github.com/ivanschuetz/SwiftCharts/graphs/contributors):
    * Created May 2015 ✅ 
    * ~2 backup contributors, 32 in total
    * Last big changes 2019 😬 
    * Last commit to main: 8 days ago 👍 


### Supported Chart Types

* Bar Charts ✅ 
* Line Charts ✅ (didn't check)
* Donut Charts ✅ (didn't check)
* more

### Code

* [Bar Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/SwiftCharts/SwiftChartsBarChart.swift)

### Result

* integration of UIView in SwiftUI sucks
* Docs don't help a lot
* Examples are very complex

------

## Stock-Charts




* URL: https://github.com/denniscm190/stock-charts
* License: MIT
* [Maturity](https://github.com/denniscm190/stock-charts/graphs/contributors):
    * Created April 2021 ⛲ 
    * Single-dev-project 👨‍💻 
    * Ongoing development ✅ 
    * Last commit to main: 20 days ago 👍 
    * Demo App: https://github.com/denniscm190/trades-demo



### Supported Chart Types

* Bar Charts => as "Capsule" Charts, for _one_ value only ❌
* Line Charts: without axis, only for this one specific use-case 🆗
* Pie Charts: ❌



### Code

* [Bar Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/StockCharts/StockChartsBarChart.swift)
* [Line Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/StockCharts/StockChartsLineChart.swift)



### Result

* Super easy to integrate
* But very limited to this one use case
* The code offers some good inspiration to base upon




--------

## SwiftUI Charts



* URL: https://github.com/spacenation/swiftui-charts
* License: MIT
* [Maturity](https://github.com/spacenation/swiftui-charts/graphs/contributors)
    * Created Nov 2019 ✅ 
    * Single-dev-project 👨‍💻
    * Last big change in Oct 2020 😬  
    * 2 open PRs
* Bug: Data is ordered in reverse
* Naming conflict: This package uses the same name as (the much older) https://github.com/danielgindi/Charts. To import both, I forked it to https://github.com/JannikArndt/swiftui-charts, changed the name and cherry-picked the open PRs.

### Supported Chart Types
* Bar Charts, also stacked, not no axis or labels 😬 
* Very simple line charts 🆗 
* No pie charts ❌



### Code

* [Bar Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/SwiftUiCharts/SwiftUiChartsBarChart.swift)
* [Line Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/SwiftUiCharts/SwiftUiChartsLineChart.swift)

### Result

* Easy to integrate
* But quite buggy
* No axis-options




--------


## AppPear/ChartView



* URL: https://github.com/AppPear/ChartView
* License: MIT
* [Maturity](https://github.com/AppPear/ChartView/graphs/contributors)
    * Created continuously between Jun 2019 and today ✅ 
    * Version 2 is currently in beta
    * Only small contributions from others

### Supported Chart Types

* Bar Charts ✅ (no axis though)
* Line Charts ✅ (with multiple lines, no axis)
* Pie Charts ✅ (no labels)


### Code

* [Bar Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/AppPear/AppPearBarChart.swift)
* [Line Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/AppPear/AppPearLineChart.swift)
* [Pie Chart](https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/AppPear/AppPearPieChart.swift)



### Result

* Nice library for that particular style, but cannot be changed to view axis / labels / more things





--------


## danielgindi/Charts



* URL: https://github.com/danielgindi/Charts
* License: Apache 2
* [Maturity](https://github.com/danielgindi/Charts/graphs/contributors)
    * Created Mar 2015 🕸 
    * Ongoing maintenance by second dev
    * 4 devs with larger contributions

### Supported Chart Types

* Bar Charts ✅ (even horizontal, with every option you can think of)
* Line Charts ✅ 
* Pie Charts ✅ 

### Code

* Bar Chart: https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/Charts/ChartsBarChart.swift
* Line Chart: https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/Charts/ChartsLineChart.swift
* Pie Chart: https://github.com/JannikArndt/SwiftUI-Charts-Playground/blob/main/ChartsPlayground/Charts/ChartsPieChart.swift



### Result

* By far the most comprehensive library
* No docs, references the [Android docs](https://weeklycoding.com/mpandroidchart-documentation/), but [good amount of demos](https://github.com/danielgindi/Charts/tree/master/ChartsDemo-iOS/Swift/Demos)
* Many third-party tutorials, for example [this one](https://github.com/StewartLynch/Charts-SwiftUI) that explains the integration into SwiftUI
* The amount of options is a little overwhelming, and the defaults are _insane_, so you _have_ to go through the options.





--------

## Conclusion

I was close to building my own version of the required charts, until I tried `danielgindi/Charts`. While it is a heavyweight, I will give it a shot.

You can try out the demo-app with all five libraries here: https://github.com/JannikArndt/SwiftUI-Charts-Playground.

