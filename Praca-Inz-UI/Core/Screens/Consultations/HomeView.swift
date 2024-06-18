//
//  HomeView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 15/06/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var filters: [String] = ["City", "Regional"]
    @AppStorage("bumble_home_filter") private var selectedFilter = "Everyone"
    @State private var searchText = ""
    
    var filteredConcultations: [Consultation] {
        guard !searchText.isEmpty else {
            return ConsultationList.wholeList
        }
        return ConsultationList.wholeList.filter {
            $0.title.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            FilterView(options: filters, selection: $selectedFilter)
                .background(
                    Divider(),
                    alignment: .bottom
                )
            
            NavigationStack {
                List(filteredConcultations, id: \.self) { item in
                    NavigationLink(destination: ConsultationDetailView(consultation: item)) {
                        HStack {
                            ImageLoaderView(urlString: item.image)
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item.title)
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                
                                Text(item.date)
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                            .padding(.leading, 10)
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Search")
            }
            
        }
        //.navigationTitle("Consultations")
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
