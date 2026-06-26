//
//  ProductList.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct ProductList: View {
    
    var products: [Product]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),

    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(products) { product in
                ProductItem(product: product)
            }
        }
        .padding(.horizontal, 16)
    }
}
