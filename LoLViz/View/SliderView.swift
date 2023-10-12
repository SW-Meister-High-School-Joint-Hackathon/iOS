//
//  SliderView.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import UIKit

final class SliderView: UISlider {
    
    private let baseLayer = CALayer()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setup()
    }
    
    private func setup() {
        clear()
        createBaseLayer()
    }
    
    private func clear() {
        tintColor = .clear
        maximumTrackTintColor = .clear
        backgroundColor = .clear
        thumbTintColor = .clear
    }
    
    private func createBaseLayer() {
        baseLayer.masksToBounds = true
        baseLayer.backgroundColor = UIColor.purple.cgColor
        baseLayer.frame = .init(x: 0,
                                y: frame.height / 4,
                                width: frame.width,
                                height: frame.height / 2)
        baseLayer.cornerRadius = baseLayer.frame.height / 2
        layer.insertSublayer(baseLayer, at: 0)
    }
}
