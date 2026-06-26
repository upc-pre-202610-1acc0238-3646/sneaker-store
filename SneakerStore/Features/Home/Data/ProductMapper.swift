//
//  ProductMapper.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

extension ProductDTO {
    func toDomain() -> Product {
        Product(id: id,
                name: name,
                brand: brand,
                image: image,
                price: price,
                rating: rating)
    }
}
