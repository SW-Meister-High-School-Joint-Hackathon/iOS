//
//  FinalListViewController.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import UIKit
import SnapKit
import Then

final class FinalListViewController: UIViewController {
    
    let logoImage = UIImageView().then {
        $0.image = UIImage(named: "logo")
    }
    
    let logo = UIImageView().then {
        $0.image = UIImage(named: "LoLViz")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        addView()
        setLayout()
    }

    func addView() {
        [logoImage, logo].forEach { view.addSubview($0) }
    }
    
    func setLayout() {
        logoImage.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(14)
        }
        
        logo.snp.makeConstraints {
            $0.leading.equalTo(logoImage.snp.trailing).offset(7)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(23)
        }
    }
    
}
