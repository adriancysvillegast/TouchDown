//
//  Shop.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 15/8/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
