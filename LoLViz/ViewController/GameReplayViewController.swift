//
//  GameReplayViewController.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/11.
//

import UIKit
import SnapKit
import Then

final class GameReplayViewController: UIViewController {
    
    let contentView = UIView()
    
    let scrollView = UIScrollView()

    let logoImage = UIImageView().then {
        $0.image = UIImage(named: "logo")
    }
    
    let teamScoreTitle = UILabel().then {
        $0.text = "팀 점수"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    let scoreImage = UIImageView().then {
        $0.image = UIImage(named: "score")
    }
    
    let eventTitle = UILabel().then {
        $0.text = "팀별 킬 수"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    let descriptionLabel = UILabel().then {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        $0.text = "각 플레이 팀의 킬 수를 나타냅니다."
    }
    
    lazy var mainBackground = UIView().then {
        $0.backgroundColor = .darkGreen
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 6
    }
    
    let event = UILabel().then {
        $0.text = "Event"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    lazy var eventButtonView = UIView()
    
    let killButton = KillButton()
    let towerButton = TowerButton()
    let suppressorButton = SuppressorButton()
    let monsterButton = MonsterButton()
    
    let memberTitle = UILabel().then {
        $0.text = "Member"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    let memberImage = UIImageView().then {
        $0.image = UIImage(named: "member")
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
        [killButton, towerButton, suppressorButton, monsterButton].forEach { self.eventButtonView.addSubview($0) }
        [logoImage, scoreImage, teamScoreTitle, eventTitle, descriptionLabel, mainBackground, event, eventButtonView, memberTitle, memberImage].forEach { self.contentView.addSubview($0) }
        scrollView.addSubview(contentView)
        self.view.addSubview(scrollView)
        
    }
    
    func setLayout() {
        scrollView.snp.makeConstraints {
            $0.top.bottom.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide)
            $0.width.equalTo(scrollView.frameLayoutGuide)
            $0.height.equalTo(1200)
        }
        
        logoImage.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalTo(contentView.snp.top).offset(14)
        }
        
        teamScoreTitle.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(23)
            $0.leading.equalToSuperview().inset(22)
        }
        
        scoreImage.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.top.equalTo(teamScoreTitle.snp.bottom).offset(14)
        }
        
        eventTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(23)
            $0.top.equalTo(scoreImage.snp.bottom).offset(28)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(22)
            $0.top.equalTo(eventTitle.snp.bottom).offset(12)
        }
        
        mainBackground.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(14)
            $0.leading.trailing.equalToSuperview().inset(22)
            $0.height.equalTo(342)
        }
        
        event.snp.makeConstraints {
            $0.top.equalTo(mainBackground.snp.bottom).offset(20)
            $0.leading.equalToSuperview().inset(22)
        }
        
        killButton.snp.makeConstraints {
            $0.height.equalTo(64)
            $0.width.equalTo(164)
            $0.leading.top.equalToSuperview()
        }
        
        towerButton.snp.makeConstraints {
            $0.height.equalTo(64)
            $0.width.equalTo(164)
            $0.trailing.top.equalToSuperview()
        }
        
        suppressorButton.snp.makeConstraints {
            $0.height.equalTo(64)
            $0.width.equalTo(164)
            $0.leading.bottom.equalToSuperview()
        }
        
        monsterButton.snp.makeConstraints {
            $0.height.equalTo(64)
            $0.width.equalTo(164)
            $0.trailing.bottom.equalToSuperview()
        }
    
        eventButtonView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(event.snp.bottom).offset(14)
            $0.height.equalTo(150)
            $0.width.equalTo(340)
        }
        
        memberTitle.snp.makeConstraints {
            $0.top.equalTo(eventButtonView.snp.bottom).offset(23)
            $0.leading.equalToSuperview().inset(22)
        }
        
        memberImage.snp.makeConstraints {
            $0.top.equalTo(memberTitle.snp.bottom).offset(14)
            $0.leading.trailing.equalToSuperview().inset(22)
        }
        
    }
}
