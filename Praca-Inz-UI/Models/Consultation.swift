//
//  Consultation.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 16/06/2024.
//

import Foundation

struct Consultation: Hashable {
    var image: String
    var title: String
    var date: String
    var description: String
    let latlng: [Double]
    var url: URL
}
// 53.131085, 23.156093 Bialystok
// 53.11702, 23.07960 Marcin


struct ConsultationList {
    
    static let wholeList = [
        Consultation(image: Constants.randomImage,
                     title: "Bialystok Consultations",
                     date: "15 May 2024",
                     description: "sialalalalalala", 
                     latlng: [53.11702, 23.07960],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage2,
                     title: "New bikes in the city",
                     date: "15 May 2024",
                     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                     latlng: [53.11702, 23.07960],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage3,
                     title: "Debate about bicycle path",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage4,
                     title: "Palac Branickich renovation",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        /// break here
        Consultation(image: Constants.randomImage,
                     title: "Bialystok Consultations",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage2,
                     title: "New bikes in city",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage3,
                     title: "Debate about bicycle path",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage4,
                     title: "Palac Branickich renovation",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage,
                     title: "Bialystok Consultations",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage2,
                     title: "New bikes in city",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage3,
                     title: "Debate about bicycle path",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
        Consultation(image: Constants.randomImage4,
                     title: "Palac Branickich renovation",
                     date: "15 May 2024",
                     description: "sialalalalalala",
                     latlng: [53.131085, 23.156093],
                     url: URL(string: Constants.webisteLink)!),
        
    ]
}
