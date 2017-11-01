//
//  ZapatoTableViewCell.swift
//  Zapatos
//
//  Created by econfig on 10/31/17.
//

import UIKit

class ZapatoTableViewCell: UITableViewCell {

    @IBOutlet weak var zapatoImage: UIImageView!
    @IBOutlet weak var zapatoTitle: UILabel!
    @IBOutlet weak var zapatoPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
