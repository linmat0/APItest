//
//  ApiResult.swift
//  APItest
//
//  Created by Lin, Matthew (CDNP) on 05/06/2024.
//

import Foundation

struct ApiResult: Codable {
    let slip: Slip
}

struct Slip: Codable {
    let id: String
    let advice: String
}
