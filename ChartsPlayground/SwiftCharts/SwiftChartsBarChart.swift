//
//  SwiftChartsBarChart.swift
//  Charts
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftCharts
import SwiftUI
import UIKit

struct SwiftChartsBarChart: View {
    let data: [String: Int]
    
    var body: some View {
        Form {
            Text("Bar Chart")
            ChartView(data: data, width: 300, height: 400)
                .frame(width: 300, height: 400, alignment: .center)
            Text("Cool!")
        }
    }
}

struct ChartView: UIViewRepresentable {
    let data: [String: Int]
    let width: Int
    let height: Int
    
    func makeUIView(context: Context) -> UIView {
        let chartConfig = BarsChartConfig(
            chartSettings: ChartSettings(), valsAxisConfig: ChartAxisConfig(from: 0, to: 50, by: 5), xAxisLabelSettings: ChartLabelSettings(), yAxisLabelSettings: ChartLabelSettings(), guidelinesConfig: GuidelinesConfig(dotted: true, lineWidth: 1, lineColor: UIColor.blue)
        )
        
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        let bars = data.map { (key: String, value: Int) in
            (key, Double(value) / 10)
        }
        
        let chart = BarsChart(frame: frame, chartConfig: chartConfig, xTitle: "€", yTitle: "Store", bars: bars, color: UIColor.green, barWidth: 20, animDuration: 0.4, animDelay: 0.5, horizontal: true)
        
        return chart.view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
}
