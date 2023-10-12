//
//  FinalResultCollectionViewCell.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import UIKit
import SnapKit
import Then

final class FinalResultCollectionViewCell: UICollectionViewCell {
    
    let identifier = "finalResultCell"
    
    let fakerImage = UIImageView().then {
        $0.image = UIImage(named: "faker")
    }
    
    let fakerLable = UILabel().then {
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 14, weight: .regular)
    }
    
    let teamLogo = UIImageView().then {
        $0.image = UIImage(named: "BDS")
    }
    
    let DGLogo = UIImageView().then {
        $0.image = UIImage(named: "DG")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.layer.cornerRadius = 4
        self.clipsToBounds = true
        
        self.backgroundColor = .darkGreen
        
        addView()
        setLayout()
    }
    
    func addView() {
        [fakerImage, fakerLable, teamLogo].forEach {
            self.addSubview($0)
        }
    }
    
    func setLayout() {
        fakerImage.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(20)
            $0.centerY.equalToSuperview()
        }
        
        fakerLable.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(fakerImage.snp.trailing).offset(30)
        }
        
        teamLogo.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(25)
            $0.centerY.equalToSuperview()
        }
    }
}
