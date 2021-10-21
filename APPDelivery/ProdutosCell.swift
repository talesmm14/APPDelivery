//
//  ProdutosCell.swift
//  APPDelivery
//
//  Created by pat002900 on 21/10/21.
//

import UIKit

class ProdutosCell: UITableViewCell {
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var descricao: UILabel!
    
    @IBOutlet weak var preco: UILabel!
    @IBOutlet weak var categoria: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
