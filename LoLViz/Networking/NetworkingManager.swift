//
//  NetworkingManager.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import Foundation

enum NerworkError: Error {
    case networkingError
    case dataError
    case parseError
}

final class NetworkingManager {
    
    static let shared = NetworkingManager()
    
    private init() {}
    
    func fetchChampion() {
        
    }
    
    func fetchMonster() {
        
    }
    
    func fetchInhibitor() {
        
    }
    
    func fetchWinner() {
        
    }
    
    func fetchTower() {
        
    }
}
