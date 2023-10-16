//
//  CartView.swift
//  ShopAnytime
//
//  Created by Magdalena Samuel on 10/11/23.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.paymentSuccess {
                Text("Your order has been received and we are processing your order. Enjoy your new shoes.")
            } else {
                if cartManager.count > 0 {
                    ForEach(cartManager.items) { item in
                        ProductRowCell(cartItem: item)
                            .environmentObject(cartManager)
                    }
                    Divider()
                    HStack {
                        Text("Your cart total is")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                    
                    ApplePayButton(action: cartManager.pay)
                        .padding()
                }
                else {
                    VStack {
                        Image(systemName: "cart")
                            .font(.largeTitle)
                            .padding()
                            .overlay(Circle().stroke(lineWidth: 2))
                        
                        Text("Cart is empty!")
                    }
                    .foregroundColor(.gray)
                }
                
            }
        }
        .navigationTitle("Shopping Cart")
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSuccess {
                //start new order
                cartManager.paymentSuccess = false
            }
        }
    }
    
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        //CartView()
          //  .environmentObject(CartManager())
        ContentView()
    }
}

