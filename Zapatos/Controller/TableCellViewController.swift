//
//  TableCellViewController.swift
//  Zapatos
//
//  Created by econfig on 10/31/17.
//

import UIKit

class TableCellViewController: UIViewController {
    @IBOutlet weak var labelTextField: UILabel!
    
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTextField.text = data
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
