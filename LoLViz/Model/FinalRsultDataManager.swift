//
//  FinalRsultDataManager.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import UIKit

final class FinalResultDataManager {
    
    private var finalResultDataArray: [FinalResult] = []
    
    init() {
        makeResultData()
    }

    func makeResultData() {
        finalResultDataArray = [
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "BDS")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "BDS")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "BDS")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "BDS")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "BDS")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "DG")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "DG")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "DG")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "DG")),
            FinalResult(fakerImage: UIImage(named: "faker"), fakerName: "페이커", teamLogo: UIImage(named: "DG"))
        ]
    }
    
    func getResultData() -> [FinalResult] {
        return finalResultDataArray
    }
}
