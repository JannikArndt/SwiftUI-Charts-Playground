//
//  ChartsBarChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Charts
import SwiftUI

struct ChartsBarChart: View {
    @State private var data: [BarChartDataEntry] = [
        BarChartDataEntry(x: 1, y: 312, icon: NSUIImage(systemName: "cart"), data: "My data"),
        BarChartDataEntry(x: 3, y: 189, icon: NSUIImage(systemName: "cart"), data: "My data"),
        BarChartDataEntry(x: 4, y: 129, icon: NSUIImage(systemName: "cart"), data: "My data"),
        BarChartDataEntry(x: 6, y: 89, icon: NSUIImage(systemName: "cart"), data: "My data")
    ]

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Form {
                BarChart(entries: data).frame(height: 300)
                HorizontalBarChart(entries: data.sorted(by: { $0.y > $1.y })).frame(height: 300)
                Button("Add data") {
                    let max = data.map(\.x).max() ?? 10
                    data.append(BarChartDataEntry(x: max + 1, y: Double.random(in: 1 ..< 500)))
                }
            }
        }
    }
}
