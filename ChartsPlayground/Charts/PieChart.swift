//
//  PieChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import Foundation

import Charts
import SwiftUI

struct PieChart: UIViewRepresentable {
    let entries: [ChartDataEntry]
    let pieChart = PieChartView()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> PieChartView {
        pieChart.delegate = context.coordinator
        pieChart.noDataText = "No Data"
                        
        pieChart.legend.enabled = false
        pieChart.drawEntryLabelsEnabled = true
    
        pieChart.usePercentValuesEnabled = true
        pieChart.sliceTextDrawingThreshold = 30
        
        pieChart.isUserInteractionEnabled = false
        
        return pieChart
    }
    
    func updateUIView(_ uiView: PieChartView, context: Context) {
        let dataSet = PieChartDataSet(entries: entries)
        dataSet.label = "Transactions"
        dataSet.colors = ChartColorTemplates.vordiplom()
        dataSet.drawIconsEnabled = false
        
        dataSet.valueColors = [.black]
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.maximumFractionDigits = 1
        formatter.multiplier = 1
        formatter.percentSymbol = " %"
        dataSet.valueFormatter = DefaultValueFormatter(formatter: formatter)
        
        uiView.data = PieChartData(dataSet: dataSet)
        
        uiView.notifyDataSetChanged()
    }
    
    class Coordinator: NSObject, ChartViewDelegate {
        let parent: PieChart
        
        init(parent: PieChart) {
            self.parent = parent
        }
    }
}
