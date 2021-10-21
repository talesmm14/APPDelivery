//
//  EstabelecimentoCell.swift
//  APPDelivery
//
//  Created by pat002900 on 14/10/21.
//

import UIKit

class EstabelecimentoCell: UITableViewCell {

    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var telefone: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
