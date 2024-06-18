//
//  Poll.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 17/06/2024.
//

import Foundation
import SwiftUI

struct Poll: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
    let color: Color
}

struct PollList {
    
    static let wholeList = [
        
        Poll(title: "More bike stations in Białystok city",
             image: Constants.randomImage2,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", 
             color: .teal),
        
        Poll(title: "ul. Kubańska renovation",
             image: Constants.randomImage3,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
             color: .orange),
        
        Poll(title: "Opinion about new President",
             image: Constants.randomImage4,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", 
             color: .red),
        
//        Consultation(image: Constants.randomImage,
//                     title: "Bialystok Consultations",
//                     date: "15 May 2024",
//                     description: "sialalalalalala",
//                     latlng: [53.131085, 23.156093],
//                     url: URL(string: Constants.webisteLink)!),
        
    ]
}
