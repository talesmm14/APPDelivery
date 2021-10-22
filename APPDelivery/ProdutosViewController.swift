//
//  ProdutosViewController.swift
//  APPDelivery
//
//  Created by pat002900 on 07/10/21.
//

import UIKit

class ProdutosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var produtos:[Produto]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.produtos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:ProdutosCell = tableView.dequeueReusableCell(withIdentifier: "produtosIdCell") as! ProdutosCell
        cell.selectionStyle = .none
        cell.nome.text = produtos[indexPath.row].name
        cell.descricao.text = produtos[indexPath.row].descricao
        cell.categoria.text = produtos[indexPath.row].categoria
        cell.preco.text = produtos[indexPath.row].preco
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let produtoView:ProdutoViewController = storyboard?.instantiateViewController(identifier: "produtoIdController") as! ProdutoViewController
        let produto = produtos[indexPath.row]
        
        produtoView.produto = produto
        
        self.navigationController?.pushViewController(produtoView, animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Produtos"
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
