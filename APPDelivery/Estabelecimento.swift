//
//  Estabelecimento.swift
//  APPDelivery
//
//  Created by pat002900 on 14/10/21.
//

import Foundation

class Estabelecimento{
    var name:String
    var cnpj:String
    var endereco:String
    var telefone:String
    var produtos:[Produto]
    
    init(name:String, cnpj:String, endereco:String, telefone:String, produtos:[Produto]) {
        self.name = name
        self.cnpj = cnpj
        self.endereco = endereco
        self.telefone = telefone
        self.produtos = produtos
    }
    
}
