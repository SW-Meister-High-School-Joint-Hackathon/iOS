//
//  NetworkingManager.swift
//  LoLViz
//
//  Created by 새미 on 2023/10/12.
//

import Foundation

//enum NerworkError: Error {
//    case networkingError
//    case dataError
//    case parseError
//}
//
//final class NetworkingManager {
//
//    static let shared = NetworkingManager()
//
//    private init() {}
//
//    typealias NetworkCompletion = (Result<[Champion], NerworkError>) -> Void
//
//    func fetchMusic(searchTerm: String, completion: @escaping NetworkCompletion) {
//        let URLString = "\(Api.requestURL)\(searchTerm)"
//        print(URLString)
//        performRequest(with: URLString) { result in
//            completion(result)
//        }
//    }
//
//    private func performRequest(with urlString: String, completion: @escaping NetworkCompletion) {
//
//        guard let url = URL(string: urlString) else { return }
//
//        let session = URLSession(configuration: .default)
//
//        let task = session.dataTask(with: url) { (data, response, error) in
//            if error != nil {
//                print(error!)
//                completion(.failure(.networkingError))
//                return
//            }
//
//            guard let safeData = data else {
//                completion(.failure(.dataError))
//                return
//            }
//
//            if let musics = self.parseJSON(safeData) {
//                print("Parse 실행")
//                completion(.success(musics))
//            } else {
//                print("Parse 실패")
//                completion(.failure(.parseError))
//            }
//        }
//        task.resume()
//    }
//
//    private func parseJSON(_ replayData: Data) -> [Champion]? {
//        do {
//            let replayData = try JSONDecoder().decode(replayData.self, from: replayData)
//            return replayData.results
//        } catch {
//            print(error.localizedDescription)
//            return nil
//        }
//    }
//
//    func fetchMonster() {
//
//    }
//
//    func fetchInhibitor() {
//
//    }
//
//    func fetchWinner() {
//
//    }
//
//    func fetchTower() {
//
//    }
//}
