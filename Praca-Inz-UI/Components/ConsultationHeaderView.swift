//
//  ConsultationHeaderView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 17/06/2024.
//

import SwiftUI
import SwiftfulUI

struct ConsultationHeaderView: View {
    var title: String = "Some title here"
    var subtitle: String = "Some Subtitle"
    var imageName: String = Constants.randomImage
    var shadowColor: Color = .black.opacity(0.8)
    var height: CGFloat = 300
    
    
    var body: some View {
        Rectangle() // ractangle with opacity 0 and overlay to catch some edge cases with different images
            .opacity(0)
            .overlay(
                ImageLoaderView(urlString: imageName)
            )
            .overlay (
                VStack(alignment: .leading, spacing: 8) {
                    Text(subtitle)
                        .font(.headline)
                    
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .foregroundStyle(.white)
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    LinearGradient(
                        colors: [shadowColor.opacity(0), shadowColor],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                , alignment: .bottomLeading
            )
            .asStretchyHeader(startingHeight: height)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        ScrollView {
            ConsultationHeaderView()
        }
        .ignoresSafeArea()
    }
    
}
