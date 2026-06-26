//
//  ProductItem.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct ProductItem: View {
    var product: Product
    var body: some View {
        VStack (alignment: .leading){
            
            AsyncImage(url: URL(string: product.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(height: 160)
                        .frame(maxWidth: .infinity)
                case .success(let image):
                    image.resizable()
                        .scaledToFit()
                        .frame(height: 160)
                        .frame(maxWidth: .infinity)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 160)
                        .frame(maxWidth: .infinity)

                @unknown default:
                    EmptyView()
                }
            }
            .padding(8)
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text(product.name)
                .font(.caption)
                .foregroundStyle(.black.opacity(0.5))
            
            Text(product.name)
                .font(.headline)
        }
        .padding(8)

        .background()
        .clipShape(RoundedRectangle(cornerRadius: 16))

    }
}
