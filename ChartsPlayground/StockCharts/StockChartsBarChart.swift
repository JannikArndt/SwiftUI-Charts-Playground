//
//  SwiftChartsBarChart.swift
//  Charts
//
//  Created by Jannik Arndt on 29.08.21.
//

import SwiftUI
import StockCharts

struct StockChartsBarChart: View {
    var body: some View {
        Form {
            Text("Bar Chart")
            CapsuleChartView(percentageOfWidth: 0.9, style: CapsuleChartStyle(capsuleColor: Color.blue))
            CapsuleChartView(percentageOfWidth: 0.8, style: CapsuleChartStyle(capsuleColor: Color.green))
            CapsuleChartView(percentageOfWidth: 0.1, style: CapsuleChartStyle(capsuleColor: Color.red))
            Text("Cool!")
        }
        
    }
}

struct StockChartsCapsuleChart: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 400, height: 120)
            .foregroundColor(.white)
            .shadow(color: Color(.gray).opacity(0.15), radius: 10)
            .overlay(
                VStack(alignment: .leading) {
                    Text("Dennis Concepcion")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Random guy")
                    
                    CapsuleChartView(percentageOfWidth: 0.6, style: CapsuleChartStyle(capsuleColor: Color.blue))
                        .padding(.top)
                }
                .padding()
            )
    }
}
