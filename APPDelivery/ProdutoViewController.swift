//
//  ProdutoViewController.swift
//  APPDelivery
//
//  Created by pat002900 on 07/10/21.
//

import UIKit

class ProdutoViewController: UIViewController {
    
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var categoria: UILabel!
    @IBOutlet weak var preco: UILabel!
    @IBOutlet weak var descricao: UILabel!
    var produto:Produto!
    
    
    @IBAction func adicionarCarrinho(_ sender: Any) {
        let carrinho:Carrinho = Carrinho.createCarrinho()
        
        let msg:String = carrinho.inserirProduto(produto:produto)
        
        let alertController = UIAlertController(title:"Informação", message: msg, preferredStyle: .alert)
        
        let voltar = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        
        alertController.addAction(voltar)
        self.present(alertController, animated: true) {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Produto x"
        self.nome.text = produto.name
        self.descricao.text = produto.descricao
        self.preco.text = produto.preco
        self.categoria.text = produto.categoria
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
