//
//  Message.swift
//  Praca-Inz-UI
//
//  Created by Paweł Rudnik on 18/06/2024.
//

import Foundation

struct Message: Identifiable, Codable {
    var id = UUID()
    var text: String
    var isMine: Bool
    var timestamp: Date
}
