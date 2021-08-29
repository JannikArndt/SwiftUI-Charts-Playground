//
//  SwiftUiChartsBarChart.swift
//  Charts
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUICustomCharts
import SwiftUI

struct SwiftUiChartsBarChart: View {
    @State var data = [12.54, 53.42, 32.11, 44.99, 12.54, 153.42, 132.11, 144.99, 312.54, 353.42, 32.11, 44.99]
    @State var matrix = [[0.1, 0.2, 0.3],
                         [0.2, 0.3, 0.4],
                         [0.3, 0.4, 0.1],
                         [0.3, 0.4, 0.2],
                         [0.3, 0.3, 0.3],
                         [0.3, 0.2, 0.4]]
    
    var body: some View {
        Form {
            Chart(data: data.map { $0 / 400 }.reversed()).chartStyle(ColumnChartStyle(column: Capsule(), spacing: 2)).frame(height: 100)
            Chart(data: data.map { $0 / 400 }.reversed()).chartStyle(ColumnChartStyle(column: Capsule().foregroundColor(.green), spacing: 10)).frame(height: 200)
            Chart(data: matrix.reversed()).chartStyle(StackedColumnChartStyle(spacing: 10)).frame(height: 200)
            Chart(data: matrix.reversed()).chartStyle(StackedAreaChartStyle(LineType.quadCurve, colors: [.green, .red, .yellow])).frame(height: 200)
        }
    }
}
