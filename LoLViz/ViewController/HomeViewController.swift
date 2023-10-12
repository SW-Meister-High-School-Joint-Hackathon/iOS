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
    
    let titleLabel = UILabel().then {
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .bold)
        $0.text = "🦾 AI를 이용한 팀별 조합분석"
    }
    
    lazy var myTeamView = UIView().then {
        $0.backgroundColor = .darkGreen
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 7
    }
    
    let myteam = UIImageView().then {
        $0.image = UIImage(named: "myTeam")
    }
    
    let descriptionLabel1 = UILabel().then {
        $0.text = "팀 캐릭터 명을 입력하세요"
        $0.font = .systemFont(ofSize: 12, weight: .medium)
        $0.textColor = .white
    }
    
    let descriptionLabel2 = UILabel().then {
        $0.text = "팀 캐릭터 명을 입력하세요"
        $0.font = .systemFont(ofSize: 12, weight: .medium)
        $0.textColor = .white
    }
    
    lazy var teamView = UIView().then {
        $0.backgroundColor = .darkGreen
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 7
    }
    
    let team = UIImageView().then {
        $0.image = UIImage(named: "team")
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
        [myteam, descriptionLabel1].forEach { myTeamView.addSubview($0) }
        [team, descriptionLabel2].forEach { teamView.addSubview($0) }
        [logoImage, logo, mainImageView, titleLabel, myTeamView, teamView].forEach { view.addSubview($0) }
    }
    
    func setLayout() {
        logoImage.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalTo(view.safeAreaLayoutGuide)
        }
        
        logo.snp.makeConstraints {
            $0.leading.equalTo(logoImage.snp.trailing).offset(7)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(13)
        }
        
        mainImageView.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(10)
            $0.leading.trailing.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(mainImageView.snp.bottom).offset(20)
            $0.leading.equalToSuperview().inset(18)
        }
        
        myteam.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(13)
            $0.top.equalToSuperview().inset(10)
        }
        
        descriptionLabel1.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(15)
            $0.top.equalTo(myteam.snp.bottom).offset(8)
        }
        
        myTeamView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(20)
            $0.width.equalTo(170)
            $0.top.equalTo(titleLabel.snp.bottom).offset(12)
            $0.height.equalTo(320)
        }
        
        team.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(13)
            $0.top.equalToSuperview().inset(10)
        }
        
        descriptionLabel2.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(15)
            $0.top.equalTo(team.snp.bottom).offset(8)
        }
        
        teamView.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.width.equalTo(170)
            $0.top.equalTo(titleLabel.snp.bottom).offset(12)
            $0.height.equalTo(320)
        }
    }

}
