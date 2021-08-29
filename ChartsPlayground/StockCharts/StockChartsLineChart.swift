//
//  SwiftChartsBarChart.swift
//  Charts
//
//  Created by Jannik Arndt on 29.08.21.
//

import StockCharts
import SwiftUI

struct StockChartsLineChart: View {
    @State var prices = [12.54, 53.42, 32.11, 44.99, 12.54, 153.42, 132.11, 144.99, 312.54, 353.42, 32.11, 44.99]
    @State var dates = ["21-08-01", "21-08-02", "21-08-03", "21-08-04", "21-08-05", "21-08-15", "21-08-16", "21-08-17", "21-08-19", "21-08-20", "21-08-21", "21-08-22"]

    var body: some View {
        Form {
            LineChartView(lineChartController: LineChartController(prices: prices, dates: dates, hours: nil, labelColor: Color.blue, indicatorPointColor: Color.red, showingIndicatorLineColor: Color.green, flatTrendLineColor: Color.yellow, uptrendLineColor: Color.gray, downtrendLineColor: Color.pink, dragGesture: true))
                .frame(width: 400, height: 400, alignment: .center)

            LineChartView(lineChartController: LineChartController(prices: prices))
        }
    }
}
