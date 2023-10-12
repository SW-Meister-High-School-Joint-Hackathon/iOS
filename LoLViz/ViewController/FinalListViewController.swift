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
    
    let finalListCell = FinalResultCollectionViewCell()
    
    let logoImage = UIImageView().then {
        $0.image = UIImage(named: "logo")
    }
    
    let logo = UIImageView().then {
        $0.image = UIImage(named: "LoLViz")
    }
    
    let teamScoreTitle = UILabel().then {
        $0.text = "팀 점수"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    let scoreImage = UIImageView().then {
        $0.image = UIImage(named: "score")
    }
    
    let finalTitle = UILabel().then {
        $0.text = "Final Result"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    private let flowLayout = UICollectionViewFlowLayout().then {
        $0.scrollDirection = .vertical
        $0.minimumLineSpacing = 18.0
        $0.minimumInteritemSpacing = 0
    }
        
    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.flowLayout).then {
        $0.isScrollEnabled = true
        $0.showsHorizontalScrollIndicator = false
        $0.showsVerticalScrollIndicator = true
        $0.scrollIndicatorInsets = UIEdgeInsets(top: 2, left: 0, bottom: 0, right: 4)
        $0.contentInset = .zero
        $0.backgroundColor = .clear
        $0.clipsToBounds = true
        $0.backgroundColor = .background
    }
    
    var finalResultList: [FinalResult] = []
        
    var finalResultDataManager = FinalResultDataManager()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        setupCollectionView()
        setDatas()
        addView()
        setLayout()
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(FinalResultCollectionViewCell.self, forCellWithReuseIdentifier: finalListCell.identifier)
    }

    func setDatas() {
        finalResultDataManager.makeResultData()
        finalResultList = finalResultDataManager.getResultData()
    }

    func addView() {
        [logoImage, logo, teamScoreTitle, scoreImage, finalTitle, collectionView].forEach { view.addSubview($0) }
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
        
        teamScoreTitle.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(23)
            $0.leading.equalToSuperview().inset(22)
        }
        
        scoreImage.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.top.equalTo(teamScoreTitle.snp.bottom).offset(14)
        }
        
        finalTitle.snp.makeConstraints {
            $0.top.equalTo(scoreImage.snp.bottom).offset(42)
            $0.leading.equalToSuperview().inset(22)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(finalTitle.snp.bottom).offset(20)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
        }
    
    }
    
}

extension FinalListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.finalResultList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: finalListCell.identifier, for: indexPath) as! FinalResultCollectionViewCell
        
        cell.fakerImage.image = finalResultList[indexPath.row].fakerImage
        cell.fakerLable.text = finalResultList[indexPath.row].fakerName
        cell.teamLogo.image = finalResultList[indexPath.row].teamLogo
        
        return cell
    }
    
}


extension FinalListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: 340, height: 75)
      }
}
