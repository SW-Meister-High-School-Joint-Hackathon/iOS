//
//  KillButton.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/11.
//

import UIKit
import SnapKit
import Then

final class KillButton: UIButton {
    
    let buttonTitle = UILabel().then {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        $0.text = "Kill"
    }
    
    let buttonIcon = UIImageView().then {
        $0.image = UIImage(named: "heart")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setButton() {
        [buttonIcon, buttonTitle].forEach { self.addSubview($0) }
        
        backgroundColor = .darkGreen
        
        layer.masksToBounds = true
        layer.cornerRadius = 5
        
        buttonIcon.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(15)
        }
        
        buttonTitle.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(18)
        }
    }
}
