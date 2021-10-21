//
//  Carrinho.swift
//  APPDelivery
//
//  Created by pat002900 on 14/10/21.
//

import Foundation

class Carrinho{
    var produtos:[Produto] = []
    static var carrinho:Carrinho? = nil
    
    class func createCarrinho() -> Carrinho{
        if(carrinho == nil){
            self.carrinho = Carrinho()
        }
        return self.carrinho!
    }
    
    func inserirProduto(produto:Produto) -> String{
        self.produtos.append(produto)
        return "Produto inserido com sucesso!"
    }
    
    func removerProduto(produtoID:Int) -> String{
        self.produtos.remove(at: produtoID)
        return "Produto removido com sucesso!"
    }
}
