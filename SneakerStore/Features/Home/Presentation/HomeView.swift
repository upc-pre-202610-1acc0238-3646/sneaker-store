//
//  HomeView.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
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
            
            
            ZStack {
                ScrollView {
                    VStack {
                        Banner()
                        if !viewModel.state.isLoading {
                            ProductList(products: viewModel.state.products)
                            
                        }
                    }
                }
                if viewModel.state.isLoading {
                    VStack {
                        ProgressView()

                    }
                }
            }
            
        }
        .background(.gray.opacity(0.1))
        .task {
            await viewModel.getProducts()
            
        }
    }
}

#Preview {
    HomeView()
}
