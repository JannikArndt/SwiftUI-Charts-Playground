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
    @State private var data = [
        ("A", 2),
        ("B", 4.5),
        ("C", 3),
        ("D", 5.4),
        ("E", 6.8),
        ("F", 0.5)
    ]

    let data2 = [
        ("Rewe", 38.523),
        ("Lidl", 43.251),
        ("Restaurant with a long name", 50.32),
        ("Some Store", 46.32)
    ]

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Form {
                BarChartWrapper(data: data2, width: 300, height: 400)
                    .frame(width: 300, height: 400, alignment: .center)
                Button("Add data") {
                    data.append(("X", Double.random(in: 1 ..< 10)))
                }
            }
        }
    }
}
