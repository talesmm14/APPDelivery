//
//  EstabelecimentosViewController.swift
//  APPDelivery
//
//  Created by pat002900 on 07/10/21.
//

import UIKit

class EstabelecimentosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var estabelecimentos:[Estabelecimento]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.estabelecimentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "estabalecimentoID") as! EstabelecimentoCell
        cell.selectionStyle = .none
        cell.nome.text = estabelecimentos[indexPath.row].name
        cell.telefone.text = estabelecimentos[indexPath.row].telefone
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewC:ProdutosViewController = storyboard?.instantiateViewController(identifier: "produtosIdController") as! ProdutosViewController
        viewC.produtos = estabelecimentos[indexPath.row].produtos
        
        self.navigationController?.pushViewController(viewC, animated: true)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Estabelecimentos"
        let repository = Repository.createRepository()
        repository.initRepository()
        self.estabelecimentos = repository.estabelecimentos
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
