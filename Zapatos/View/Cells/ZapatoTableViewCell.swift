//
//  ZapatoTableViewCell.swift
//  Zapatos
//
//  Created by econfig on 10/31/17.
//

import Foundation
import UIKit

class ZapatoTableViewCell: UITableViewCell {

    @IBOutlet weak var zapatoImage: UIImageView!
    @IBOutlet weak var zapatoTitle: UILabel!
    @IBOutlet weak var zapatoPrice: UILabel!
    
    //MARK: Cell Configuration
    func configurateCell(_ theShoes: TheShoes){
        self.zapatoTitle?.text = theShoes.name
        self.zapatoPrice?.text = theShoes.price
        self.zapatoImage?.image = UIImage(named: theShoes.picture)
    }

    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//
//    }
    
}
