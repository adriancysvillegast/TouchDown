//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 11/8/23.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
