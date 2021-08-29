//
//  HorizontalBarChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Charts
import SwiftUI

struct HorizontalBarChart: UIViewRepresentable {
    let entries: [BarChartDataEntry]
    let barChart = HorizontalBarChartView()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> HorizontalBarChartView {
        barChart.delegate = context.coordinator
        barChart.noDataText = "No Data"
        barChart.fitBars = true
        
        barChart.leftAxis.axisMinimum = 0
        
        barChart.rightAxis.enabled = false
        barChart.xAxis.enabled = false
        barChart.leftAxis.enabled = false
        
        barChart.legend.enabled = false
        
        barChart.setScaleEnabled(false)
        barChart.isUserInteractionEnabled = false
        
        return barChart
    }
    
    func updateUIView(_ uiView: HorizontalBarChartView, context: Context) {
        let dataSet = BarChartDataSet(entries: entries)
        dataSet.label = "Transactions"
        dataSet.colors = [.red]
        dataSet.valueColors = [.blue]
        dataSet.valueFormatter = DefaultValueFormatter(decimals: 0)
        
        uiView.data = BarChartData(dataSet: dataSet)
        
        uiView.notifyDataSetChanged()
    }
    
    class Coordinator: NSObject, ChartViewDelegate {
        let parent: HorizontalBarChart
        
        init(parent: HorizontalBarChart) {
            self.parent = parent
        }
    }
}
