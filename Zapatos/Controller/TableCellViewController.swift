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
    
    var data = ""
    var shoePhoto: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTextField.text = data
        shoeImage.image = shoePhoto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buyButtom(_ sender: Any) {
        
    }
    

}
