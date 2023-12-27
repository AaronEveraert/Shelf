//
//  Url.swift
//  Shelf
//
//  Created by aaron on 27/12/2023.
//

import Foundation



struct Url: Hashable, Codable, Identifiable {
    var id: Int
    var url: String
    var name: String
    var group: String
    var description: String
}
