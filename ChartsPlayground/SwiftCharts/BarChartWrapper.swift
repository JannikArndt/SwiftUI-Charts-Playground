//
//  BarChartWrapper.swift
//  ChartsPlayground
//
//  Created by Jannik Arndt on 05.09.21.
//

import SwiftCharts
import SwiftUI

struct BarChartWrapper: UIViewRepresentable {
    let data: [(String, Double)]
            
    let width: Int
    let height: Int
    
    let chartConfig = BarsChartConfig(
        valsAxisConfig: ChartAxisConfig(from: 0, to: 8, by: 2)
    )
    
    let frame = CGRect(x: 0, y: 70, width: 300, height: 500)
        
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> ChartView {
        let barsChart = BarsChart(
            frame: frame,
            chartConfig: chartConfig,
            xTitle: "€",
            yTitle: "Store",
            bars: data,
            color: UIColor.red,
            barWidth: 20
        )
        
        return barsChart.view
    }
    
    func updateUIView(_ uiView: ChartView, context: Context) {}
    
    class Coordinator: NSObject, ChartDelegate {
        func onZoom(scaleX: CGFloat, scaleY: CGFloat, deltaX: CGFloat, deltaY: CGFloat, centerX: CGFloat, centerY: CGFloat, isGesture: Bool) {
            print("Zoom")
        }
        
        func onPan(transX: CGFloat, transY: CGFloat, deltaX: CGFloat, deltaY: CGFloat, isGesture: Bool, isDeceleration: Bool) {
            print("Pan")
        }
        
        func onTap(_ models: [TappedChartPointLayerModels<ChartPoint>]) {
            print("Tap")
        }
        
        let parent: BarChartWrapper
        
        init(parent: BarChartWrapper) {
            self.parent = parent
        }
    }
}
