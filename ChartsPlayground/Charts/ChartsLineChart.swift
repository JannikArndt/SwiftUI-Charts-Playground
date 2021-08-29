//
//  ChartsLineChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Charts
import SwiftUI

struct ChartsLineChart: View {
    @State private var data: [ChartDataEntry] = [
        ChartDataEntry(x: 1627812000, y: 312, icon: NSUIImage(systemName: "cart"), data: "My data"),
        ChartDataEntry(x: 1627898400, y: 189, icon: NSUIImage(systemName: "cart"), data: "My data"),
        ChartDataEntry(x: 1627984800, y: 129, icon: NSUIImage(systemName: "cart"), data: "My data"),
        ChartDataEntry(x: 1628071200, y: 89, icon: NSUIImage(systemName: "cart"), data: "My data")
    ]

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Form {
                LineChart(entries: data).frame(height: 300)
                Button("Add data") {
                    let max = data.map(\.x).max() ?? 1628071200
                    data.append(ChartDataEntry(x: max + 86400, y: Double.random(in: 1 ..< 500)))
                }
            }
        }
    }
}

struct ChartsLineChart_Previews: PreviewProvider {
    static var previews: some View {
        ChartsLineChart()
    }
}
