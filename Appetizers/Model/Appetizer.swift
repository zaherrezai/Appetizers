//
//  Appetizer.swift
//  Appetizers
//
//  Created by user285702 on 16.10.25.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let protein: Int
    let calories: Int
    let carb: Int
    let price: Double
    let imageURL: String
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct MockData{
   static let sampleAppetizer = Appetizer(id: 0001,
                                    name: "food",
                                    description: "yummy food",
                                    protein: 12,
                                    calories: 130,
                                    carb: 50,
                                    price: 12.2,
                                    imageURL: "food url")
    static let appetizerList = [
        sampleAppetizer,
        sampleAppetizer,
        sampleAppetizer
    ]
}

