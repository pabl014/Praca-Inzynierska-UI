//
//  ConsultationDetailView.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 17/06/2024.
//

import SwiftUI
import SwiftfulUI
import MapKit

struct ConsultationDetailView: View {
    
    let consultation: Consultation
    @State private var showHeader: Bool = true
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                ScrollView(.vertical) {
                    ZStack {
                        ConsultationHeaderView(
                            title: consultation.title,
                            subtitle: consultation.date,
                            imageName: consultation.image,
                            height: 250
                        )
                        
                        Image(systemName: "chevron.left")
                            .font(.title3)
                            .padding(10)
                            .background(showHeader ? Color.black.opacity(0.001) : .gray.opacity(0.7))
                            .clipShape(Circle())
                            .onTapGesture {
                                dismiss()
                            }
                            .padding(.leading, 16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(y: -100)
                    }
                    .readingFrame { frame in
                        showHeader = frame.maxY < 150 ? true : false
                    }
                    VStack {
                        Text("Description")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        
                        Text(consultation.description)
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, -10)
                            .padding(.leading)
                        
                        Text("Info")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top)
                            .padding(.leading)
                        
                        Text("27 May 2024, ul. Sztabowa 95, 18:30")
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        
                        
                        MapView(consultation: consultation)
                        
                        Text(consultation.description)
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, -10)
                            .padding(.leading)
                            .padding(.top)
                        
                        VStack {
                            List {
                                Section(
                                    header:
                                        HStack {
                                            Text("Info")
                                            Image(systemName: "info.square.fill")
                                        }
                                        .font(.headline)
                                ) {
                                    Text("siema")
                                    Text("siema")
                                }
                            }
                        }
                        
                        NavigationLink(destination: DiscussionView(consultation: consultation)) {
                            Text("Join Discussion")
                                .bold()
                                .font(.title2)
                                .frame(width: 300, height: 50)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        
                        Link(destination: consultation.url, label: {
                            Text("See on website")
                                .bold()
                                .font(.title3)
                                .frame(width: 300, height: 50)
                                //.buttonStyle(.plain)
                                .foregroundStyle(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                        })
                        
                        
                    }
                    
                    
                }
            }
            .toolbar(.hidden, for: .navigationBar)
            .toolbar(.hidden, for: .tabBar)
        }
    }
}




#Preview {
    ConsultationDetailView(consultation: Consultation(image: Constants.randomImage,
                                                      title: "Bialystok Consultations",
                                                      date: "15 May 2024",
                                                      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                                                      latlng: [53.131085, 23.156093],
                                                      url: URL(string: Constants.webisteLink)!))
}



struct MapView: View {
    
    let consultation: Consultation
    
    @State private var cameraPosition: MapCameraPosition = .automatic //.region(.countryRegion)
    
    var body: some View {
        Map(position: $cameraPosition) {
            Marker(
                "\("Location")",
                coordinate: CLLocationCoordinate2D(latitude: consultation.latlng[0], longitude: consultation.latlng[1])
            )
        }
        .mapControls {
            MapCompass()
            MapPitchToggle()
        }
        .onAppear() {
            cameraPosition = .region(MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: consultation.latlng[0],
                    longitude: consultation.latlng[1]
                ),
                latitudinalMeters: 100,
                longitudinalMeters: 100)
            )
        }
        .mapStyle(.hybrid)
        .frame(width: 380, height: 300)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
