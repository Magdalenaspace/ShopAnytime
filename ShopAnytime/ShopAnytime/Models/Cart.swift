//
//  Cart.swift
//  ShopAnytime
//
//  Created by Magdalena Samuel on 10/10/23.
//

import Foundation

struct Cart: Identifiable {
    let id = UUID()
    let product: Product
    var quantity: Int
}
