//
//  Photos.swift
//  FLickr Client App
//
//  Created by hatice Pınarbaşı on 5.09.2022.
//

import Foundation

struct Photos: Codable {
    
    
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let total: Int?
    let photo: [Photo]?
    
}
