//
//  ProductRepository.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

protocol ProductRepository {
    
    func getProducts() async throws -> [Product]
}
