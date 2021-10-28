//
//  CarrinhoViewController.swift
//  APPDelivery
//
//  Created by pat002900 on 07/10/21.
//

import UIKit

class CarrinhoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var carrinho = Carrinho.createCarrinho()
    
    @IBAction func finalizarCarrinho(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carrinho.produtos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell:CarrinhoProdutoCell = tableView.dequeueReusableCell(withIdentifier: "itemCarrinhoID") as! CarrinhoProdutoCell
        cell.nome.text = carrinho.produtos[indexPath.row].name
        cell.preco.text = carrinho.produtos[indexPath.row].preco
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Carrinho de compras"
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
