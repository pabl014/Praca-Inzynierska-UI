//
//  PollCardView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 18/06/2024.
//

import SwiftUI

struct PollCardView: View {
    
    var item: Poll
    var shadowColor: Color = .black.opacity(0.8)
    
    var body: some View {
        ZStack {
            
            ImageLoaderView(urlString: item.image)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 300, height: 300)
                .offset(y: 30)
            
            ZStack {
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.system(size: 30, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .foregroundStyle(.white.opacity(0.9))
                        
                    
                    Spacer()
                }
            }
        }
        .padding()
        .padding(.top)
        .padding(.bottom)
        .frame(width: 350, height: 500)
        .background(item.color.gradient)
        .clipShape(.rect(cornerRadius: 50))
    }
}

#Preview {
    PollCardView(item: PollList.wholeList[0])
}


//ZStack {
//    Rectangle()
//
//        .clipShape(RoundedRectangle(cornerRadius: 50))
//        .foregroundStyle(item.color.gradient)
//    
//    VStack(alignment: .leading) {
//        Text(item.title)
//            .font(.system(size: 30, weight: .semibold))
//        
//        Spacer()
//        
//        VStack {
//            ImageLoaderView(urlString: item.image)
//                .frame(width: 50, height: 50)
//        }
//    }
//}
