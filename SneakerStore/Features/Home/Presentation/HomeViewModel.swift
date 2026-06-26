//
//  HomeViewModel.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

import Combine

class HomeViewModel: ObservableObject {
    @Published var state = HomeState()
    
    let repository: ProductRepository = ProductRepositoryImpl()
    
    func getProducts() async {
        state.isLoading = true
        
        do {
            let products = try await repository.getProducts()
            state.products = products
            state.message = nil
            
        } catch {
            state.message = "Failed to fetch products"
            
        }
        state.isLoading = false
    }
}
