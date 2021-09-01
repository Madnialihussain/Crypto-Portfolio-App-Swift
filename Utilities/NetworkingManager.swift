//
//  NetworkingManager.swift
//  CryptoWallet
//
//  Created by General-Kenboi on 25/08/2021.
//

import Foundation


class NetworkingManager {
    
    static func download(url: URL) {
        let temp = URLSession.shared.dataTaskPublisher(for: url)
             .subscribe(on: DispatchQueue.global(qos: .default))
             .tryMap { (output) -> Data in
                 
                 guard let response = output.response as? HTTPURLResponse,
                       response.statusCode >= 200 && response.statusCode < 300 else {
                     throw URLError(.badServerResponse)
                 }
                 return output.data
             }
             .receive(on: DispatchQueue.main)
    }
}
