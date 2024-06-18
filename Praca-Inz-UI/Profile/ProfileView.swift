//
//  ProfileView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 15/06/2024.
//

import SwiftUI
import StoreKit

struct ProfileView: View {
    
    @State private var isProfileExpanded = false
    @Namespace private var profileAnimation
    @Namespace private var profileAvatar
    @Namespace private var profileName
    @Namespace private var profileLocation
    
    @Environment(\.requestReview) var requestReview // 3 times per 365 days per app
    @State private var counter = 0
    
    
    var body: some View {
        NavigationStack {
            VStack {
                if isProfileExpanded {
                    expandedProfileView
                } else {
                    collapsedProfileView
                }
                
                Button("Review x 3") {
                    counter += 1
                    
                    if counter == 3 {
                        requestReview()
                    }
                }
                .bold()
                .font(.title2)
                .frame(width: 300, height: 50)
                .background(.blue.gradient)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top)
                
                
                    NavigationLink(destination: TabOnboardView()) {
                        
                        Text("OnBoardView")
                        
                    }
                    .bold()
                    .font(.title2)
                    .frame(width: 300, height: 50)
                    .background(.blue.gradient)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top)
                
                Spacer()
    
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .font(.headline)
                    }
                }
            }
        }
        
        
       
        
        Spacer()
    }
    
    var profileImage: some View {
        Image("pudzian2")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .onTapGesture {
                withAnimation(.spring()) {
                    isProfileExpanded.toggle()
                }
            }
    }
    
    var collapsedProfileView: some View {
        HStack {
            profileImage
                .matchedGeometryEffect(id: profileAvatar, in: profileAnimation)
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading) {
                Text("Mariusz Pudzian")
                    .font(.title)
                    .bold()
                    .matchedGeometryEffect(id: profileName, in: profileAnimation)
                
                Text("Białystok, Poland")
                    .foregroundStyle(.secondary)
                    .matchedGeometryEffect(id: profileLocation, in: profileAnimation)
            }
            
            Spacer()
        }
        .padding()
    }
    
    var expandedProfileView: some View {
        VStack(spacing: 10) {
            profileImage
                .matchedGeometryEffect(id: profileAvatar, in: profileAnimation)
                .frame(width: 160, height: 160)
            
            VStack(spacing: 5) {
                Text("Mariusz Pudzian")
                    .font(.title)
                    .bold()
                    .matchedGeometryEffect(id: profileName, in: profileAnimation)
                
                Text("Białystok, Poland")
                    .foregroundStyle(.secondary)
                    .matchedGeometryEffect(id: profileLocation, in: profileAnimation)
                
                Text("Wielki Polak. Szef. Strongman. Fighter. Pudzian Pudzianator Pudzilla Pudzianowski, Pudzionaldo")
                    .padding()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
    }
}





#Preview {
    ZStack {
        NavigationStack {
            ProfileView()
        }
    }
}
