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
