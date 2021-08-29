//
//  ContentView.swift
//  Charts
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedView") private var selectedView: String?

    let categoryData = [
        "Rewe": 38523,
        "Lidl": 43251,
        "Restaurant with a long name": 5032,
        "Some Store": 4632
    ]


    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("ivanschuetz/SwiftCharts")) {
                    NavigationLink("Bar Chart", destination: SwiftChartsBarChart(data: categoryData), tag: "SwiftChartsBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: SwiftChartsLineChart(), tag: "SwiftChartsLineChart", selection: $selectedView)
                    NavigationLink("Pie Chart", destination: SwiftChartsPieChart(), tag: "SwiftChartsPieChart", selection: $selectedView)
                }

                Section(header: Text("denniscm190/stock-charts")) {
                    NavigationLink("Bar Chart", destination: StockChartsBarChart(), tag: "StockChartsBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: StockChartsLineChart(), tag: "StockChartsLineChart", selection: $selectedView)
                    NavigationLink("Capsule Example", destination: StockChartsCapsuleChart(), tag: "StockChartsCapsuleChart", selection: $selectedView)
                }
                
                Section(header: Text("spacenation/swiftui-charts")) {
                    NavigationLink("Bar Chart", destination: SwiftUiChartsBarChart(), tag: "SwiftUiChartsBarChart", selection: $selectedView)
                    NavigationLink("Line Chart", destination: SwiftUiChartsLineChart(), tag: "SwiftUiChartsLineChart", selection: $selectedView)
                }
            }
            .navigationBarTitle("Charts")
        }
    }
}
