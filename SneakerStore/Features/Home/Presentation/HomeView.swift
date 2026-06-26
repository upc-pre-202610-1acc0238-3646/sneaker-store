//
//  HomeView.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct HomeView: View {
    
    let products = [
        Product(id: 1, name: "Nike Air Motion", brand: "Nike", image: "https://i.imgur.com/E8ZBAnC.png", price: 122.64),
        
        Product(id: 2, name: "Nike Air Motion", brand: "Nike", image: "https://i.imgur.com/E8ZBAnC.png", price: 122.64)
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image("user")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .background(.yellow)
                    .clipShape(Circle())
                
                VStack (alignment: .leading){
                    Text("Welcome back").bold().font(.headline)
                    Text("John Doe").font(.caption)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "bell")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.black)
                        .background(.white)
                        .clipShape(Circle())
                }

            }
            .padding()
            
            ScrollView {
                VStack {
                    Banner()
                    ProductList(products: products)
                }
                
            }
            
        }
        .background(.gray.opacity(0.1))
    }
}

#Preview {
    HomeView()
}
