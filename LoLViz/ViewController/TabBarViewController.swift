//
//  TabBarViewController.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/11.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        let gameReplayVC = GameReplayViewController()
        let finalVC = FinalListViewController()
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        gameReplayVC.tabBarItem = UITabBarItem(title: "Game Replay", image: UIImage(systemName: "gamecontroller"), selectedImage: UIImage(systemName: "gamecontroller"))
        finalVC.tabBarItem = UITabBarItem(title: "Final Results", image: UIImage(systemName: "flag.filled.and.flag.crossed"), selectedImage: UIImage(systemName: "flag.filled.and.flag.crossed"))
        
        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationReplay = UINavigationController(rootViewController: gameReplayVC)
        let navigationFinal = UINavigationController(rootViewController: finalVC)
        
        setViewControllers([navigationHome, navigationReplay, navigationFinal], animated: false)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tabBar.tintColor = .neonGreen
        tabBar.backgroundColor = .background
    }
}
