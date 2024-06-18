//
//  OnboardView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 16/06/2024.
//

import SwiftUI

struct OnboardView: View {
    
    var imageName: String = Constants.randomImage
    var title: String = "Some Title"
    var description: String = "Some part of description will go here. Some part of description will go here."
    var showButton: Bool = false
    var icon: String = "globe.europe.africa"
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.blue)
                
                Text(title)
                    .font(.title)
                    .bold()
                
                Text(description)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 40)
            
            if showButton {
                VStack {
                    Spacer()
                    Button("Let's Begin") {
                        // Button action here
                    }
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 50)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.bottom, 80)
                }
            }
        }
    }
}

struct TabOnboardView: View {
    
    var body: some View {
        TabView {
            OnboardView(title: "Welcome to Social Consultations app",
                        description: "Consult things from your city and region with others",
                        icon: "person.3.fill")
            
            OnboardView(title: "Share your ideas and problems",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        icon: "bubble.left.and.text.bubble.right.fill")
            
            OnboardView(title: "See results",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        showButton: true, 
                        icon: "chart.bar.xaxis.ascending")
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    TabOnboardView()
}

