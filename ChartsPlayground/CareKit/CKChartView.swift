//
//  CKChartView.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 25.09.21.
//

import CareKitUI
import SwiftUI

struct CKChartView: UIViewRepresentable {
    var title: String
    var detail: String?
    var dataSeries: [OCKDataSeries]
    var plotType: OCKCartesianGraphView.PlotType
    var hAxisMarkers: [String]
    
    func makeUIView(context: Context) -> OCKCartesianChartView {
        let chartView = OCKCartesianChartView(type: plotType)
        
        chartView.graphView.dataSeries = dataSeries
        chartView.graphView.horizontalAxisMarkers = hAxisMarkers
        
        return chartView
    }
    
    func updateUIView(_ uiView: OCKCartesianChartView, context: Context) {
        uiView.headerView.titleLabel.text = loc(title)
        
        
        if let detail = detail {
            uiView.headerView.detailLabel.text = loc(detail)
        }
    }
}
