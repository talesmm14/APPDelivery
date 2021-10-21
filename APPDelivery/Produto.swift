//
//  Produto.swift
//  APPDelivery
//
//  Created by pat002900 on 14/10/21.
//

import Foundation

class Produto{
    var name: String
    var descricao: String
    var categoria: String
    var preco: String
    var img: String
    
    init(name:String, descricao:String, categoria:String, preco:String, img:String) {
        self.name = name
        self.descricao = descricao
        self.categoria = categoria
        self.preco = preco
        self.img = img
    }
    
}
