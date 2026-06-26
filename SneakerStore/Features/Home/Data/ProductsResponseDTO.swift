//
//  ProductsResponseDTO.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

struct ProductsResponseDTO: Decodable {
    let count: Int
    let products: [ProductDTO]
    
    enum CodingKeys: String, CodingKey {
        case count
        case products = "results"
    }
}
