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
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        gameReplayVC.tabBarItem = UITabBarItem(title: "Game Replay", image: UIImage(systemName: "gamecontroller"), selectedImage: UIImage(systemName: "gamecontroller"))
        
        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationReplay = UINavigationController(rootViewController: gameReplayVC)
        
        setViewControllers([navigationHome, navigationReplay], animated: false)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tabBar.tintColor = .neonGreen
        tabBar.backgroundColor = .background
    }
}
