//
//  AppPearBarChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI
import SwiftUICharts

struct AppPearBarChart: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            BarChartView(data: ChartData(values: [("2018 Q4", 63150), ("2019 Q1", 50900), ("2019 Q2", 77550), ("2019 Q3", 79600), ("2019 Q4", 92550)]), title: "Sales", legend: "Quarterly", form: ChartForm.extraLarge)

            BarChartView(data: ChartData(values: [("2018 Q4", 63150), ("2019 Q1", 50900), ("2019 Q2", 77550), ("2019 Q3", 79600), ("2019 Q4", 92550)]), title: "Title", form: ChartForm.medium, cornerImage: nil, valueSpecifier: "%.0f", animatedToBack: true)

            BarChartView(data: ChartData(points: [1.23, 2.43, 3.37]), title: "A", valueSpecifier: "%.2f")
        }
    }
}

struct AppPearBarChart_Previews: PreviewProvider {
    static var previews: some View {
        AppPearBarChart()
    }
}
