//
//  ContentView.swift
//  CryptoWallet
//
//  Created by General-Kenboi on 08/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack (spacing : 40) {
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                
                Text("Secondary text Color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                
                Text("Red Color")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
 
