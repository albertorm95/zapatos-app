//
//  LoginViewController.swift
//  Zapatos
//
//  Created by econfig on 10/29/17.
//

import UIKit
import Firebase
import GoogleSignIn
import SVProgressHUD


class LoginViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func logInButtom(_ sender: Any) {
        SVProgressHUD.show()
        
        //TODO: Log In the user
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil{
                print(error)
            }
            else
            {
                print("Logging Successful")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToShoes", sender: self)
            }
        }
    }
}

