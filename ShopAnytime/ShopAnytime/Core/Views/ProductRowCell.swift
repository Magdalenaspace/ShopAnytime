//
//  ProductRowCell.swift
//  ShopAnytime
//
//  Created by Magdalena Samuel on 10/11/23.
//

import SwiftUI

struct ProductRowCell: View {
    @EnvironmentObject var cartManager: CartManager
    
    var cartItem: Cart
    
    var body: some View {
        HStack(spacing: 20) {
            Image(cartItem.product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(cartItem.product.name)
                    .bold()
                Text("x \(cartItem.quantity)")
                Text("$\(cartItem.product.price * cartItem.quantity).00")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .onTapGesture {
                    cartManager.removeFromCart(product: cartItem.product)
                }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRowCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductRowCell(cartItem: Cart(product: Product.productList[2], quantity: 4))
            .environmentObject(CartManager())
    }
}
