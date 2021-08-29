//
//  AppPearPiChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI
import SwiftUICharts

struct AppPearPieChart: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            PieChartView(data: [8,32,11,23,40,28], title: "My data", legend: "explained", form: CGSize(width: 400, height: 300), dropShadow: false, valueSpecifier: "%.f")
            PieChartView(data: [8, 23, 54, 32], title: "Title", legend: "Legendary") // legend is optional
        }
    }
}
