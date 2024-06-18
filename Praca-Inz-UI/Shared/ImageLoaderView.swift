//
//  ImageLoaderView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 16/06/2024.
//

import SwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(
                AsyncImage(url: URL(string: urlString), content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: resizingMode)
                        .allowsHitTesting(false)// you dont click the image but always the rectangle
                }, placeholder: {
                    ProgressView()
                })
                
            )
            .clipped() // always match to the shape of the rectangle
    }
}

#Preview {
    ImageLoaderView()
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(40)
        .padding(.vertical, 60)
}
