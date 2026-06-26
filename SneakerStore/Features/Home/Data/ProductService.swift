//
//  ProductService.swift
//  SneakerStore
//
//  Created by Alumnos on 26/6/26.
//

import Foundation

class ProductService {
    
    private let session = URLSession.shared
    
    func getProducts() async throws -> [ProductDTO] {
        
        let urlString = "https://sneakerapi-y3ub.onrender.com/api/products"
        
        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidURL
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await session.data(for: urlRequest)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            let responseDTO = try  JSONDecoder().decode(ProductsResponseDTO.self, from: data)
            return responseDTO.products
        } catch {
            throw NetworkError.decodingError
        }

    }
}


enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case decodingError
}
