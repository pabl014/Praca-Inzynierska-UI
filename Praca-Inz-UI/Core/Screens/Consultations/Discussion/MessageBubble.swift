//
//  MessageBubble.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 18/06/2024.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.isMine ? .trailing : .leading) {
            HStack {
                VStack {
                    HStack {
                        Image("pudzian2")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                        
                        Text("Mariusz Pudzian")
                            .bold()
                            .font(.title3)
                            .foregroundStyle(message.isMine ? .white : .black)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(message.text)
                        .foregroundStyle(message.isMine ? .white : .black)
                        
                }
                .padding()
                .background(message.isMine ? Color.blue.gradient : Color.white.gradient)
                .foregroundStyle(.black)
                .shadow(radius: 10)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 10)
                
            }
            .onTapGesture {
                showTime.toggle()
            }
                
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                    .padding(message.isMine ? .trailing : .leading, 25)
            }
        }
        .padding(.vertical)
        .frame(maxWidth: 250, alignment: message.isMine ? .trailing : .leading)
        .padding(message.isMine ? .leading : .trailing, 70)
    }
}

#Preview {
    VStack {
        MessageBubble(message: Message(text: "Moim zdaniem powinnismy ogarnac nowe rowerki w miescie gdyz taniej jest jezdzic rowerskiem niz samopchodem",
                                       isMine: false,
                                       timestamp: .now)
        )
        
        MessageBubble(message: Message(text: "Takie jest twoje zdanie, ja mam zupelnie inne",
                                       isMine: true,
                                       timestamp: .now)
        )
    }
}
