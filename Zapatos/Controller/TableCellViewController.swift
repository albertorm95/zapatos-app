//
//  TableCellViewController.swift
//  Zapatos
//
//  Created by econfig on 10/31/17.
//

import UIKit

class TableCellViewController: UIViewController {
    
    @IBOutlet weak var labelTextField: UILabel!
    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var priceTextField: UILabel!
    
    var theShoes: TheShoes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoeImage?.image = UIImage(named: theShoes!.picture)
        labelTextField?.text = theShoes!.name
        priceTextField?.text = theShoes!.price
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buyButtom(_ sender: Any) {
        
    }
    

}
