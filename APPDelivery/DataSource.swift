//
//  DataSource.swift
//  APPDelivery
//
//  Created by pat002900 on 14/10/21.
//

import Foundation

class Repository{
    var estabelecimentos:[Estabelecimento] = []
    static var repository:Repository? = nil
    
    class func createRepository() -> Repository{
        if(repository == nil){
            
            self.repository = Repository()
        }
        return self.repository!
    }
    
    func initRepository(){
        estabelecimentos.append(
            Estabelecimento(
                name:"Pastelaria do Silvano", cnpj: "1234560-2930/23423", endereco: "Rua Janio JR", telefone: "23423498324", produtos: [
                    Produto(name: "Pastel de Queijo", descricao: "De queijinho", categoria: "Lanche", preco: "5,00R$", img: "Pasteleria"),
                ]
            ))
        estabelecimentos.append(
            Estabelecimento(
                name:"Churrascaria do Janio", cnpj: "1234560-2930/23423", endereco: "Rua Janio JR", telefone: "23423498324", produtos: [
                    Produto(name: "Carne mal passada", descricao: "Do jeito certo", categoria: "Lanche", preco: "35,00R$", img: "Churrascaria"),
                    Produto(name: "Carne bem passada", descricao: "Do jeito errado", categoria: "Lanche", preco: "15,00R$", img: "Churrascaria")
                ]
            ))
        estabelecimentos.append(
            Estabelecimento(
                name:"Casa de carne do Fredson", cnpj: "1234560-2930/23423", endereco: "Rua Janio JR", telefone: "23423498324", produtos: [
                    Produto(name: "Peixada de aluno", descricao: "Aluno que não fez trabalho", categoria: "Lanche", preco: "10,00R$", img: "CasaDeCarne"),
                    Produto(name: "Bife a silvano", descricao: "Muito louco", categoria: "Lanche", preco: "55,00R$", img: "CasaDeCarne")
                ]
            ))
        estabelecimentos.append(
            Estabelecimento(
                name:"Hot-Dog do Jhemys", cnpj: "1234560-2930/23423", endereco: "Rua Janio JR", telefone: "23423498324", produtos: [
                    Produto(name: "Com linguiça", descricao: "Daquele jeitinho", categoria: "Lanche", preco: "5,00R$", img: "hotdog"),
                    Produto(name: "Só o pure", descricao: "Bem branquinho", categoria: "Lanche", preco: "7,00R$", img: "hotdog")
                ]
            ))
        estabelecimentos.append(
            Estabelecimento(
                name:"Generico", cnpj: "1234560-2930/23423", endereco: "Rua Janio JR", telefone: "23423498324", produtos: [
                    Produto(name: "Generico 1", descricao: "Daquele jeitinho", categoria: "Lanche", preco: "5,00R$", img: "hotdog"),
                    Produto(name: "Generico 2", descricao: "Bem branquinho", categoria: "Lanche", preco: "7,00R$", img: "hotdog")
                ]
            ))
        
    }
}
