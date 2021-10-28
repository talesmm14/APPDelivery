//
//  CarrinhoProdutoCell.swift
//  APPDelivery
//
//  Created by pat002900 on 28/10/21.
//

import UIKit

class CarrinhoProdutoCell: UITableViewCell{
    
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var preco: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
