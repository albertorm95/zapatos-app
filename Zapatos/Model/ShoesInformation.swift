//
//  ShoesInformation.swift
//  Zapatos
//
//  Created by Abiu Roldan on 11/8/17.
//

import Foundation
import UIKit

struct ShoesInformation{
    var textArray = ["Vans", "Converse", "Nike", "Adidas", "DC", "NewBalance", "Skechers"]
    var priceArray = ["$60", "$60", "$70", "$70", "$60", "$80", "$80"]
    var imagesArray = [UIImage(named:"vans.png"), UIImage(named:"converse.png"), UIImage(named:"nike.png"), UIImage(named:"adidas.png"), UIImage(named:"dc.png"), UIImage(named:"newbalance.jpg"), UIImage(named:"skechers.png")]
    
    init (textArray: String, priceArray: String, imagesArray: UIImage){
        self.textArray = [textArray]
        self.priceArray = [priceArray]
        self.imagesArray = [imagesArray]
    }
}
