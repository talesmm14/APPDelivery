//
//  EstabelecimentosViewController.swift
//  APPDelivery
//
//  Created by pat002900 on 07/10/21.
//

import UIKit

class EstabelecimentosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = UITableViewCell()
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let produtos = storyboard?.instantiateViewController(identifier: "produtosId")
        
        if(produtos != nil){
            self.navigationController?.pushViewController(produtos!, animated: true)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Estabelecimentos"
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
