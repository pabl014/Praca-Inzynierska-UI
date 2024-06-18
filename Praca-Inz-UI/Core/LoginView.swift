//
//  LoginView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 16/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLoggedIn: Bool
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        // Header
        ZStack {
            headerView2
            
            //loginForm
            VStack {
                
               logo
                
                TextField("Email Address", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.black.opacity(0.05))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.black.opacity(0.05))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button("Log In") {
                    isLoggedIn = true
                }
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        
        
        
        //Spacer()
    }
    
    var headerView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.blue)
                .rotationEffect(Angle(degrees: 18))
            
            VStack {
                HStack {
                    Image("planet-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    
                    VStack(alignment: .leading) {
                        Text("Social")
                        
                        Text("Consultations")
                          
                    }
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                    .bold()
                        
                }
                .offset(y: 30)
                .padding()
                
                
            }
            .padding(.top, 30)
        }
        .offset(y: -100)
        .frame(width: UIScreen.main.bounds.width * 3, height: 400)
    }
    
    var headerView2: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundStyle(.white.opacity(0.5))
            Circle()
                .scale(1.4)
                .foregroundStyle(.white)
        }
    }
    
    var logo: some View {
        VStack {
            HStack {
                Image("planet-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .leading) {
                    Text("Social")
                    
                    Text("Consultations")
                      
                }
                .font(.system(size: 40))
                .foregroundStyle(.black)
                .bold()
                .padding(.trailing, 10)
                    
            }
            .offset(y: 30)
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    LoginView(isLoggedIn: .constant(false))
}
