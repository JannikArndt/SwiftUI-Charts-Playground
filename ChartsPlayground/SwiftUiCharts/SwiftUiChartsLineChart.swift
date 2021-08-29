//
//  SwiftUiChartsLineChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI
import SwiftUICustomCharts

struct SwiftUiChartsLineChart: View {
    @State var data = [12.54, 53.42, 32.11, 44.99, 12.54, 153.42, 132.11, 144.99, 312.54, 353.42, 32.11, 44.99]
    @State var matrix = [[0.1, 0.2, 0.3],
                         [0.2, 0.3, 0.4],
                         [0.3, 0.4, 0.1],
                         [0.3, 0.4, 0.2],
                         [0.3, 0.3, 0.3],
                         [0.3, 0.2, 0.4]]
    
    var body: some View {
        Form {
            Chart(data: data.map { $0 / 400 }.reversed()).chartStyle(LineChartStyle(LineType.line, lineColor: .green, lineWidth: 2)).frame(height: 100)
            Chart(data: data.map { $0 / 400 }.reversed()).chartStyle(LineChartStyle(LineType.quadCurve, lineColor: .green, lineWidth: 2)).frame(height: 100)
                                                                     
            Chart(data: matrix.reversed()).chartStyle(LineChartStyle(LineType.line, lineColor: .green, lineWidth: 2)).frame(height: 100)
            Chart(data: matrix.reversed()).chartStyle(LineChartStyle(LineType.quadCurve, lineColor: .green, lineWidth: 2)).frame(height: 100)
        }
    }
}
