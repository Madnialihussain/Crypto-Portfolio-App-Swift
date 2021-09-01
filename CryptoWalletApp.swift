//
//  CryptoWalletApp.swift
//  CryptoWallet
//
//  Created by General-Kenboi on 08/08/2021.
//

import SwiftUI

@main
struct CryptoWalletApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
