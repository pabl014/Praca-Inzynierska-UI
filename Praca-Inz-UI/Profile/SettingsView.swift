//
//  SettingsView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 18/06/2024.
//

import SwiftUI
//import PhotosUI

struct SettingsView: View {
    
    @State private var notifications = false
    @State private var darkMode = false
    
    //@State private var avatarImage: UIImage?
    //@State private var photoPickerItem: PhotosPickerItem?
    
    var body: some View {
        List {
            Button("Log out") {
                
            }
            
            Section(
                header:
                    HStack {
                        Text("Info")
                        Image(systemName: "info.square.fill")
                    }
                    .font(.headline)
            ) {
                Text("Country: Poland")
                Text("City: Białystok")
                Text("Region: Starosielce")
                Text("Address: Marcinowa 15")
            }
            
            Section(
                header:
                    HStack {
                        Text("Actions")
                    }
                    .font(.headline)
            ) {
                Toggle("Notifications", isOn: $notifications)
                Toggle("Dark Mode", isOn: $darkMode)
                Button("Contact admins") {
                    
                }
                Button("Report Issues", role: .destructive) {
                    //Text("Report a bug")
                }
            }
            
            Section(
                header:
                    HStack {
                        Text("Edit profile")
                    }
                    .font(.headline)
            ) {
                Button("Change avatar") {
                  
                }
                Button("Change email address") {
                    
                }
                Button("Change your description") {
                    
                }
            }
            
            Section(
                header:
                    HStack {
                        Text("Application")
                    }
                    .font(.headline)
            ) {
                Button("Terms of service") {
                    
                }
                Button("Privacy Policy") {
                    
                }
                Link("Visit Website", destination: URL(string: Constants.webisteLink)!)
                Button("Learn More") {
                    
                }
            }
            
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationTitle("Settings")
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}

//// edit profile pic
//PhotosPicker(selection: $viewModel.selectedImage) {
//    VStack {
//        
//        if let image = viewModel.profileImage {
//            
//            image
//                .resizable()
//                .foregroundStyle(.white)
//                .background(.gray)
//                .clipShape(Circle())
//                .frame(width: 80, height: 80)
//        } else {
//            CircularProfileImageView(user: viewModel.user, size: .large)
//        }
//        Text("Edit profile picture")
//            .font(.footnote)
//            .fontWeight(.semibold)
//        
//        Divider()
//    }
//}
//.padding(.vertical, 8)
