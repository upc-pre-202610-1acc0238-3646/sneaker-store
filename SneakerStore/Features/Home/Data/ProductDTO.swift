//
//  ProductDTO.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

struct ProductDTO: Decodable {
    let id: Int
    let name: String
    let brand: String
    let price: Double
    let rating: Double
    let image: String
    let description: String
}
