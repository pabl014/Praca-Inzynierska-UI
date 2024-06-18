//
//  ContentView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 15/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLoggedIn = false
    
    var body: some View {
        if isLoggedIn {
            TabBarView()
        } else {
            LoginView(isLoggedIn: $isLoggedIn)
        }
    }
}

#Preview {
    ContentView()
}
