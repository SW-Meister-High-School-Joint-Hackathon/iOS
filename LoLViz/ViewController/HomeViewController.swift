//
//  HomeViewController.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/11.
//

import UIKit
import SnapKit
import Then

final class HomeViewController: UIViewController {
    
    let logoImage = UIImageView().then {
        $0.image = UIImage(named: "logo")
    }
    
    let logo = UIImageView().then {
        $0.image = UIImage(named: "LoLViz")
    }

    let mainImageView = UIImageView().then {
        $0.image = UIImage(named: "LeagueOfLegends")
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
        [logoImage, logo, mainImageView].forEach { view.addSubview($0) }
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
        
        mainImageView.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(23)
            $0.leading.trailing.equalToSuperview()
        }
    }

}
