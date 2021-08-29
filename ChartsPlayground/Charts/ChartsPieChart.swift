//
//  ChartsPieChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Charts
import SwiftUI

struct ChartsPieChart: View {
    @State private var data: [PieChartDataEntry] = [
        PieChartDataEntry(value: 354, label: "Rewe", icon: NSUIImage(systemName: "cart"), data: "rewe"),
        PieChartDataEntry(value: 261, label: "Lidl", icon: NSUIImage(systemName: "cart"), data: "rewe"),
        PieChartDataEntry(value: 117, label: "Langer Name", icon: NSUIImage(systemName: "cart"), data: "rewe"),
        PieChartDataEntry(value: 14, label: "Aldi", icon: NSUIImage(systemName: "cart"), data: "rewe")
    ]

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Form {
                PieChart(entries: data).frame(height: 300)
                Button("Add data") { data.append(PieChartDataEntry(value: Double.random(in: 1 ..< 500))) }
            }
        }
    }
}

struct ChartsPieChart_Previews: PreviewProvider {
    static var previews: some View {
        ChartsPieChart()
    }
}
