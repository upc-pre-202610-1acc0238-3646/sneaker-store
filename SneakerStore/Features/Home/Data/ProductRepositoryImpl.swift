//
//  ProductRepositoryImpl.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

class ProductRepositoryImpl: ProductRepository {
    let service = ProductService()
    
    func getProducts() async throws -> [Product] {
        
        let dtos = try await service.getProducts()
        return dtos.map { $0.toDomain()}
    }
    
    
}
