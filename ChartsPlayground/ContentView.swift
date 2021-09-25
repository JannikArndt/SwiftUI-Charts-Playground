//
//  ContentView.swift
//  Charts
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedView") private var selectedView: String?

    var body: some View {
        NavigationView {
            Form {
                // https://github.com/carekit-apple/CareKit#carekitui-
                Section(header: Text("carekit-apple/CareKit")) {
                    NavigationLink("All Charts", destination: CareKitChart(), tag: "CareKitChart", selection: $selectedView)
                }
                // https://github.com/ivanschuetz/SwiftCharts
                Section(header: Text("ivanschuetz/SwiftCharts")) {
                    NavigationLink("Bar Chart", destination: SwiftChartsBarChart(), tag: "SwiftChartsBarChart", selection: $selectedView)
//                    NavigationLink("Line Chart", destination: SwiftChartsLineChart(), tag: "SwiftChartsLineChart", selection: $selectedView)
//                    NavigationLink("Pie Chart", destination: SwiftChartsPieChart(), tag: "SwiftChartsPieChart", selection: $selectedView)
                }

                // https://github.com/denniscm190/stock-charts
                Section(header: Text("denniscm190/stock-charts")) {
                    NavigationLink("Bar Chart", destination: StockChartsBarChart(), tag: "StockChartsBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: StockChartsLineChart(), tag: "StockChartsLineChart", selection: $selectedView)
                    NavigationLink("Capsule Example", destination: StockChartsCapsuleChart(), tag: "StockChartsCapsuleChart", selection: $selectedView)
                }

                // https://github.com/spacenation/swiftui-charts
                Section(header: Text("spacenation/swiftui-charts")) {
                    NavigationLink("Bar Chart", destination: SwiftUiChartsBarChart(), tag: "SwiftUiChartsBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: SwiftUiChartsLineChart(), tag: "SwiftUiChartsLineChart", selection: $selectedView)
                }

                // https://github.com/AppPear/ChartView
                Section(header: Text("AppPear/ChartView")) {
                    NavigationLink("Bar Chart", destination: AppPearBarChart(), tag: "AppPearBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: AppPearLineChart(), tag: "AppPearLineChart", selection: $selectedView)
                    NavigationLink("Pie Chart", destination: AppPearPieChart(), tag: "AppPearPieChart", selection: $selectedView)
                }

                // https://github.com/danielgindi/Charts
                Section(header: Text("danielgindi/Charts")) {
                    NavigationLink("Bar Chart", destination: ChartsBarChart(), tag: "ChartsBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: ChartsLineChart(), tag: "ChartsLineChart", selection: $selectedView)
                    NavigationLink("Pie Chart", destination: ChartsPieChart(), tag: "ChartsPieChart", selection: $selectedView)
                }
            }
            .navigationBarTitle("Charts")
        }
    }
}
