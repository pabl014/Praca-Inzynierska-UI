//
//  DiscussionView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 17/06/2024.
//

import SwiftUI

struct DiscussionView: View {
    
    let consultation: Consultation
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    VStack {
                        titleRow
                    }
                    .background(.black.gradient.opacity(0.1))
                    
                    ScrollView {
                        
                        MessageBubble(message: Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque tellus quis faucibus blandit. Nam tincidunt aliquam ligula, sed semper nibh fringilla nec. Vestibulum nec nibh vel risus interdum pharetra.",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        .frame(maxWidth: .infinity)
                       
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: true,
                                                       timestamp: .now)
                        )
                        .frame(maxWidth: .infinity)
                        
                        MessageBubble(message: Message(text: "Ok rozumiem",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque tellus quis faucibus blandit. Nam tincidunt aliquam ligula, sed semper nibh fringilla nec.",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: true,
                                                       timestamp: .now)
                        )
                        .frame(maxWidth: .infinity)
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: true,
                                                       timestamp: .now)
                        )
                        .frame(maxWidth: .infinity)
                        
                        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                                       isMine: false,
                                                       timestamp: .now)
                        )
                    }
                    .scrollIndicators(.hidden)
                    .frame(maxWidth: .infinity)
                }
                
            }
            .toolbar(.hidden, for: .navigationBar)
            .toolbar(.hidden, for: .tabBar)
            .background(.white.gradient)
        }
       
        
    }
    
    var titleRow: some View {
        HStack(spacing: 20) {
            
            Image(systemName: "chevron.left")
                .font(.title3)
                .padding(10)
                .background(.gray.opacity(0.7))
                .clipShape(Circle())
                .onTapGesture {
                    dismiss()
                }
//                .padding(.leading, 16)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                //.offset(y: -100)
            
            Image(systemName: "bubble.left.and.text.bubble.right.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                //.clipShape(RoundedRectangle(cornerRadius: 50))
                .foregroundStyle(.blue)
            
            VStack(alignment: .leading) {
                Text(consultation.title)
                    .font(.title)
                    .bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
                
        }
        .padding()
    }
}

#Preview {
    DiscussionView(consultation: Consultation(image: Constants.randomImage,
                                              title: "Bialystok Consultations",
                                              date: "15 May 2024",
                                              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                                              latlng: [53.131085, 23.156093],
                                              url: URL(string: Constants.webisteLink)!))
}
