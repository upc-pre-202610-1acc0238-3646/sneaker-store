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
        VStack (alignment: .leading, spacing: 8){
            
            AsyncImage(url: URL(string: product.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(height: 160)
                        .frame(maxWidth: .infinity)
                case .success(let image):
                    image.resizable()
                        .scaledToFit()
                        .padding(8)
                        .frame(height: 160)
                        .frame(maxWidth: .infinity)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                        .frame(height: 160)
                        .frame(maxWidth: .infinity)

                @unknown default:
                    EmptyView()
                }
            }
            .padding(8)
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text(product.brand)
                .font(.caption)
                .foregroundStyle(.black.opacity(0.5))
            
            Text(product.name)
                .font(.headline)
            
            HStack {
                Text("$\(product.price, specifier: "%.2f") ")
                    .font(.subheadline)
                    .bold()
                Spacer()
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                    .font(.subheadline)
                Text("\(product.rating, specifier: "%.1f") ")
                    .font(.subheadline)
                    .foregroundStyle(.black.opacity(0.5))

            }
        }
        .padding(8)

        .background()
        .clipShape(RoundedRectangle(cornerRadius: 16))

    }
}
