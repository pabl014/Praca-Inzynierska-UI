//
//  TabBarView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 15/06/2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Image(systemName: "person.3.fill")
                Text("Consultations")
            }
            
            NavigationStack {
                PollsView()
            }
            .tabItem {
                Image(systemName: "mail.stack")
                Text("Polls")
            }
            
            NavigationStack {
                SearchView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            
            NavigationStack {
                //ProfileView(showSignInView: $showSignInView)
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

#Preview {
    TabBarView()
}
