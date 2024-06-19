//
//  SearchView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 15/06/2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var filteredUsers: [User] {
        guard !searchText.isEmpty else {
            return UserList.fullList
        }
        return UserList.fullList.filter {
            $0.username.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredUsers) { user in
                HStack(spacing: 20) {
                    ImageLoaderView(urlString: user.avatar)
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    
                    Text(user.username)
                        .font(.title3)
                        .fontWeight(.medium)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
            .overlay {
                if filteredUsers.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SearchView()
    }
}


