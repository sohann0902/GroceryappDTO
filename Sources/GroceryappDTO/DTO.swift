//
//  File.swift
//  
//
//  Created by Sohan Maurya on 29/08/24.
//

import Foundation

public struct LoginDTO : Codable {
    public var error: Bool
    public var reason: String? = nil
    public var token : String? = nil
    public var userid : UUID? = nil
    
   public init(error: Bool, reason: String? = nil, token: String? = nil, userid: UUID? = nil) {
        self.error = error
        self.reason = reason
        self.token = token
        self.userid = userid
    }
}

public struct RegisterDTO : Codable {
    public var error: Bool
    public var reason: String? = nil
    
    public init(error: Bool, reason: String? = nil) {
        self.error = error
        self.reason = reason
    }
}

public struct GroceryCategoryRequestDTO : Codable {
    public let title: String
    public let colorCode: String
    
    public init(title: String, colorCode: String) {
        self.title = title
        self.colorCode = colorCode
    }
}

public struct GroceryCategoryResponseDTO : Codable {
    
    public let title: String
    public let colorCode: String
    public let id: UUID
    
    
    public init(title: String, colorCode: String, id: UUID) {
        self.title = title
        self.colorCode = colorCode
        self.id = id
    }
}

public struct GroceryItemRequestDTO : Codable {
    public let title : String
    public let price : Double
    public let quantity : Int
    
    public init(title: String, price: Double, quantity: Int) {
        self.title = title
        self.price = price
        self.quantity = quantity
    }
}


public struct GroceryItemResponseDTO : Codable {
    public let id : UUID
    public let title : String
    public let price : Double
    public let quantity : Int
    
    public init(id: UUID, title: String, price: Double, quantity: Int) {
        self.id = id
        self.title = title
        self.price = price
        self.quantity = quantity
    }
}
