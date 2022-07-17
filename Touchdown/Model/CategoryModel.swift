//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Роман Замолотов on 18.07.2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
