//
//  Usuario.swift
//  APPDelivery
//
//  Created by pat002900 on 14/10/21.
//

import Foundation

class Usuario{
    var name:String
    var email:String
    var password:String
    
    init(name:String, email:String, password:String) {
        self.name = name
        self.email = email
        self.password = password
    }
}
