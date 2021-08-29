//
//  AppPearLineChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI
import SwiftUICharts

struct AppPearLineChart: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            LineChartView(data: [8,32,11,23,40,28], title: "My Data", legend: "Explains", form: CGSize(width: 400, height: 200), rateValue: nil, dropShadow: false)
            MultiLineChartView(data: [([8,32,11,23,40,28], GradientColors.green), ([90,99,78,111,70,60,77], GradientColors.purple), ([34,56,72,38,43,100,50], GradientColors.orngPink)], title: "Title")
        }
    }
}
