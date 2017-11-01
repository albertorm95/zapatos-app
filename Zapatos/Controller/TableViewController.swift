//
//  TableViewController.swift
//  Zapatos
//
//  Created by econfig on 10/31/17.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var zapatosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zapatosTableView.delegate = self
        zapatosTableView.dataSource = self
        
        zapatosTableView.register(UINib(nibName:"ZapatoTableViewCell", bundle: nil), forCellReuseIdentifier: "zapatoCell")

        configureTableView()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "zapatoCell", for: indexPath) as! ZapatoTableViewCell
        
        let textArray = ["Vans", "Converse", "Nike", "Adidas", "DC", "NewBalance", "Skechers"]
        let priceArray = ["$60", "$60", "$70", "$70", "$60", "$80", "$80"]
        let imagesArray = [UIImage(named:"vans.png"), UIImage(named:"converse.png"), UIImage(named:"nike.png"), UIImage(named:"adidas.png"), UIImage(named:"dc.png"), UIImage(named:"newbalance.jpg"), UIImage(named:"skechers.png")]
        
        cell.zapatoTitle.text = textArray[indexPath.row]
        cell.zapatoPrice.text = priceArray[indexPath.row]
        cell.zapatoImage.image = imagesArray[indexPath.row]
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 7
        
    }
    
    func configureTableView(){
        zapatosTableView.rowHeight = UITableViewAutomaticDimension
        zapatosTableView.estimatedRowHeight = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
