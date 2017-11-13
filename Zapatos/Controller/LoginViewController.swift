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


class LoginViewController: UIViewController, GIDSignInUIDelegate {

    //MARK: IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setuptGoogleButton()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    fileprivate func setuptGoogleButton(){
        //Add Google Log In Button
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x: 60, y: 500, width: view.frame.width - 115, height: 50)
        view.addSubview(googleButton)
        
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func logInButtom(_ sender: Any) {
        if emailTextField.text == "" || passwordTextField.text == ""{
            SVProgressHUD.showError(withStatus: "Please insert Email or Password")
            let d_one = TimeInterval(1)
            SVProgressHUD.dismiss(withDelay: d_one)
        }
        else{
            SVProgressHUD.show()
            
            //TODO: Log In the user
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                
                if error != nil{
                    print(error)
                    SVProgressHUD.showError(withStatus: "Please verify Email or Password")
                    let timeD = TimeInterval(1)
                    SVProgressHUD.dismiss(withDelay: timeD)
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
}

