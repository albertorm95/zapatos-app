//
//  TableViewController.swift
//  Zapatos
//
//  Created by econfig on 10/31/17.
//

import UIKit

struct TheShoes {
    let name: String
    let picture: String
    let price: String
}

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var theShoes = [TheShoes]()
    
    @IBOutlet weak var zapatosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zapatosTableView.delegate = self
        zapatosTableView.dataSource = self
        
        zapatosTableView.register(UINib(nibName:"ZapatoTableViewCell", bundle: nil), forCellReuseIdentifier: "zapatoCell")

        initializeTheSoes()
        configureTableView()
        // Do any additional setup after loading the view.
    }
    
    //MARK: initializeTheSoes
    func initializeTheSoes(){
        self.theShoes = [TheShoes(name: "Vans",  picture: "vans.png", price: "$60" ),
        TheShoes(name: "Converse",  picture: "converse.png", price: "$60" ),
        TheShoes(name: "Nike",  picture: "nike.png", price: "$70" ),
        TheShoes(name: "Adidas",  picture: "adidas.png", price: "$70" ),
        TheShoes(name: "DC",  picture: "dc.png", price: "$60" ),
        TheShoes(name: "NewBalance",  picture: "newbalance.png", price: "$80" ),
        TheShoes(name: "Skechers",  picture: "skechers.png", price: "$80" )]
        
        
        
//        var textArray = ["Vans", "Converse", "Nike", "Adidas", "DC", "NewBalance", "Skechers"]
//        var priceArray = ["$60", "$60", "$70", "$70", "$60", "$80", "$80"]
//        var imagesArray = [UIImage(named:"vans.png"), UIImage(named:"converse.png"), UIImage(named:"nike.png"), UIImage(named:"adidas.png"), UIImage(named:"dc.png"), UIImage(named:"newbalance.jpg"), UIImage(named:"skechers.png")]
    }
    
    //MARK: - TableView Methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "zapatoCell", for: indexPath) as! ZapatoTableViewCell
        cell.configurateCell(theShoes[indexPath.row])
        return cell
        
        
//        cell.zapatoTitle.text = textArray[indexPath.row]
//        cell.zapatoPrice.text = priceArray[indexPath.row]
//        cell.zapatoImage.image = imagesArray[indexPath.row]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theShoes.count
    }
    
    func configureTableView(){
        zapatosTableView.rowHeight = UITableViewAutomaticDimension
        zapatosTableView.estimatedRowHeight = 100
    }
    //TODO: - Cell go to buy view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToBuy", sender: theShoes[indexPath.row])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBuy"{
            let indexPath = self.zapatosTableView!.indexPathForSelectedRow
            let destinationVC: TableCellViewController = segue.destination as! TableCellViewController
            destinationVC.theShoes = theShoes[indexPath!.row]
            
        }
        
//        let detalles = segue.destination as! TableCellViewController
//        detalles.data = sender as! String

    }
}
