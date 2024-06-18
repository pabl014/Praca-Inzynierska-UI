//
//  PollsView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 17/06/2024.
//

import SwiftUI

struct PollsView: View {
    
    @State private var filters: [String] = ["Current", "Finished"]
    @AppStorage("home_filter") private var selectedFilter = "Everyone"
    
    //var pollList: [Poll] =
    
    var body: some View {
        VStack {
            FilterView(options: filters, selection: $selectedFilter)
                .background(
                    Divider(),
                    alignment: .bottom
                )
            
            Spacer()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(PollList.wholeList) { item in
                        NavigationLink(destination: PollsDetailView(poll: item)) {
                            ZStack {
                                    PollCardView(item: item)
                                        .containerRelativeFrame(.horizontal, count: 1, spacing: 16)
                                        //.foregroundStyle(item.color.gradient)
                                        .scrollTransition { content, phase in
                                        
                                        // phase.isIdentity = when view is on the screen
                                        
                                        content
                                            //.opacity(phase.isIdentity ? 1.0 : 0.4)
                                            .scaleEffect(x: phase.isIdentity ? 1.0 : 0.7,
                                                         y: phase.isIdentity ? 1.0 : 0.7)
                                            .offset(y: phase.isIdentity ? 0 : 50)
                                    }
                                    .padding(.bottom, 20)
                            }
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(16, for: .scrollContent)
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicators(.automatic)
            .navigationTitle("Polls")
        }
        .padding(.top)
    }
}

#Preview {
    PollsView()
}


struct Item: Identifiable {
    let id = UUID()
    let color: Color
}

struct ItemData {
    static var items = [
        Item(color: .teal),
        Item(color: .orange),
        Item(color: .red),
        Item(color: .green),
        Item(color: .blue),
        Item(color: .purple),
        
    ]
}

