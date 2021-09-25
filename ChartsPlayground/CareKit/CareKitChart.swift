//
//  CareKitLineChart.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 25.09.21.
//

import CareKitUI
import SwiftUI

struct CareKitChart: View {
    let dataSeries: [OCKDataSeries] = [
        OCKDataSeries(values: [1.0, 2.0, 1.4, 1.5, 2.4, 2.0], title: "Coughing", size: 2.0, color: UIColor.red),
        OCKDataSeries(values: [3.0, 2.9, 2.7, 5.0], title: "Laughing", size: 2.0, color: UIColor.blue),
        OCKDataSeries(values: [1.4, 2.5, 3.6, 4.8, 6.3], title: "Crying", size: 2.0, color: UIColor.green),
        OCKDataSeries(dataPoints: [CGPoint(x: 1.0, y: 2.0), CGPoint(x: 2.0, y: 2.0), CGPoint(x: 3.0, y: 1.0), CGPoint(x: 5.0, y: 0.0)], title: "Plotting", size: 2.0, color: UIColor.brown)
    ]

    let markers = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    CKChartView(title: "A line chart", detail: "With some numbers", dataSeries: dataSeries, plotType: .line, hAxisMarkers: markers)
                        .frame(height: 300)

                    CKChartView(title: "A bar chart", detail: "With some numbers", dataSeries: dataSeries, plotType: .bar, hAxisMarkers: markers)
                        .frame(height: 300)

                    CKChartView(title: "A scatter chart", detail: "With some numbers", dataSeries: dataSeries, plotType: .scatter, hAxisMarkers: markers)
                        .frame(height: 300)
                }.padding()
            }
        }
        .navigationBarTitle(Text("CareKitCharts"), displayMode: .inline)
    }
}

struct CareKitChart_Previews: PreviewProvider {
    static var previews: some View {
        CareKitChart()
    }
}
