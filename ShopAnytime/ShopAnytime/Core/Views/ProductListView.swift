//
//  ProductListView.swift
//  ShopAnytime
//
//  Created by Magdalena Samuel on 10/11/23.
//

import SwiftUI

struct ProductListView: View {
    
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    private var cartButtonView: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if cartManager.count > 0 {
                Text("\(cartManager.count)")
                    .font(.caption2.bold())
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color.pink)
                    .cornerRadius(20)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(Product.productList) { product in
                        NavigationLink {
                            ProductDetailView(product: product)
                                .environmentObject(cartManager)
                        } label: {
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("DevTechie's Shoe Shop")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    cartButtonView
                }

            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
