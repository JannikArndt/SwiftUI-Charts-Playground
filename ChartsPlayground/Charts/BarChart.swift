//
//  ChartsWrapper.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Charts
import SwiftUI

struct BarChart: UIViewRepresentable {
    let entries: [BarChartDataEntry]
    let barChart = BarChartView()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> BarChartView {
        barChart.delegate = context.coordinator
        barChart.noDataText = "No Data"
        barChart.fitBars = true
        
        barChart.leftAxis.axisMinimum = 0
        
        barChart.rightAxis.enabled = false
        
        barChart.xAxis.labelPosition = .bottom
        
        barChart.legend.drawInside = true
        barChart.legend.verticalAlignment = .top
        barChart.legend.horizontalAlignment = .right
        
        barChart.setScaleEnabled(false)
        barChart.isUserInteractionEnabled = false
        
        return barChart
    }
    
    func updateUIView(_ uiView: BarChartView, context: Context) {
        let dataSet = BarChartDataSet(entries: entries)
        dataSet.label = "Transactions"
        dataSet.colors = [.red]
        dataSet.valueColors = [.blue]
        dataSet.valueFormatter = DefaultValueFormatter(decimals: 0)
        
        uiView.data = BarChartData(dataSet: dataSet)

        uiView.notifyDataSetChanged()
    }
    
    class Coordinator: NSObject, ChartViewDelegate {
        let parent: BarChart
        
        init(parent: BarChart) {
            self.parent = parent
        }
    }
}
