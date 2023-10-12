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
        [logoImage, mainImageView].forEach { view.addSubview($0) }
    }
    
    func setLayout() {
        logoImage.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(14)
        }
        
        mainImageView.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(23)
            $0.leading.trailing.equalToSuperview()
        }
    }

}
