//
//  LineChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Charts
import SwiftUI

struct LineChart: UIViewRepresentable {
    let entries: [ChartDataEntry]
    let lineChart = LineChartView()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> LineChartView {
        lineChart.delegate = context.coordinator
        lineChart.noDataText = "No Data"
        
        lineChart.leftAxis.axisMinimum = 0
        
        lineChart.rightAxis.enabled = false
        
        lineChart.xAxis.labelPosition = .bottom
        lineChart.xAxis.valueFormatter = DateValueFormatter()
        lineChart.xAxis.labelRotationAngle = 30
        
        lineChart.legend.enabled = false
        
        lineChart.setScaleEnabled(false)
        lineChart.isUserInteractionEnabled = false
        
        return lineChart
    }
    
    func updateUIView(_ uiView: LineChartView, context: Context) {
        let dataSet = LineChartDataSet(entries: entries)
        dataSet.label = "Transactions"
        dataSet.colors = [.red]
        dataSet.valueColors = [.blue]
        dataSet.valueFormatter = DefaultValueFormatter(decimals: 0)
        dataSet.drawCirclesEnabled = false
        dataSet.mode = .cubicBezier
        
        uiView.data = LineChartData(dataSet: dataSet)
        
        uiView.notifyDataSetChanged()
    }
    
    class Coordinator: NSObject, ChartViewDelegate {
        let parent: LineChart
        
        init(parent: LineChart) {
            self.parent = parent
        }
    }
}
