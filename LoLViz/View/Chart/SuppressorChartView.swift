//
//  SuppressorChartView.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import UIKit
import SnapKit
import Charts
import DGCharts

final class SuppressChartView: UIView {

    let barChartView = BarChartView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupBarChart()
        setupData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupBarChart() {
        self.addSubview(barChartView)
        
        barChartView.backgroundColor = .darkGreen
        
        
        barChartView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalToSuperview()
        }
        
        let xAxis = barChartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.drawAxisLineEnabled = false
        xAxis.drawGridLinesEnabled = false
        
        barChartView.rightAxis.enabled = false
    
        let leftAxis = barChartView.leftAxis
        leftAxis.axisMinimum = 0
        leftAxis.axisMaximum = 20
        leftAxis.drawGridLinesEnabled = true
        
        barChartView.borderLineWidth = 0
        
        barChartView.data = nil
    }
    
    func setupData() {
        let teamAData = BarChartDataEntry(x: 1.0, y: 15.0)
        let teamBData = BarChartDataEntry(x: 2.0, y: 10.0)
        
        let dataSet = BarChartDataSet(entries: [teamAData, teamBData], label: "억제기 파괴 횟수")
        dataSet.colors = [NSUIColor.pink, NSUIColor.blue]

        
        let data = BarChartData(dataSet: dataSet)
        
        barChartView.data = data
    }
    
}
