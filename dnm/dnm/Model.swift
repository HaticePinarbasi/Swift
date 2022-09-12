//
//  Model.swift
//  dnm
//
//  Created by hatice Pınarbaşı on 12.09.2022.
//

import Foundation
// MARK: - ResponseJSON



struct ResponseJSON: Codable {
    let success: Bool?
    let result: Result?
}



// MARK: - Result?
struct Result: Codable {
    let base, lastupdate: String?
    let data: [Datum]?
}


// MARK: - Datum?
struct Datum: Codable {
    let code, name: String?
    let rate: Double?
    let calculatedstr: String?
    let calculated: Double?
}
