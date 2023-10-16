//
//  CartManager.swift
//  ShopAnytime
//
//  Created by Magdalena Samuel on 10/10/23.
//

import Foundation

final class CartManager: ObservableObject {
    @Published private(set) var items: [Cart] = []
    @Published private(set) var count = 0
    @Published private(set) var total: Int = 0
    
    let paymentHandler = PaymentHandler()
    @Published var paymentSuccess = false
    
    func addToCart(product: Product) {
        if let idx = items.firstIndex(where: { item in
            item.product.id == product.id
        }) {
            items[idx].quantity += 1
            total += product.price
            count += 1
            return
        }
        
        let cartItem = Cart(product: product, quantity: 1)
        items.append(cartItem)
        total += product.price
        count += 1
    }
    
    func removeFromCart(product: Product) {
        if let idx = items.firstIndex(where: { item in
            item.product.id == product.id
        }) {
            let amtToRemove = items[idx].quantity * product.price
            let itemsToRemove = items[idx].quantity
            items.remove(at: idx)
            total -= amtToRemove
            count -= itemsToRemove
        }
    }
    
    func getCartItem(by product: Product) -> Cart {
        let foundItems = items.filter { item in
            item.product.id == product.id
        }
        return foundItems[0]
    }
    
    func pay() {
        paymentHandler.startPayment(items: items, total: total) { success in
            self.paymentSuccess = success
            self.items = []
            self.total = 0
            self.count = 0
            //determine the state of the payment and then do this depending upon whether the payment was successful or not.
        }
    }
}
