//
//  User.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 19/06/2024.
//

import Foundation

struct User: Identifiable, Hashable {
    let id = UUID()
    let avatar: String
    let username: String
}

struct UserList {
    static let fullList = [
        User(avatar: Constants.randomImage, username: "Jacek Szefowski"),
        User(avatar: Constants.randomImage2, username: "Jan Kowalski"),
        User(avatar: Constants.randomImage3, username: "Marcino Amaro \n(Admin of: Starosielce)"),
        User(avatar: Constants.randomImage4, username: "Robert Kubica"),
        User(avatar: Constants.randomImage4, username: "Tadeusz Malinowski \n(Admin of: Białystok)"),
    ]
}
