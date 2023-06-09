//
//  ViewController.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 06.06.2023.
//

import UIKit

struct UserFirst {
    let userName = "User"
    let userPassword = 123321
}

class LoginViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var buttonLogin:  UIButton!
    @IBOutlet var buttonForgotUser: UIButton!
    @IBOutlet var buttonForgotPassword: UIButton!
    
    @IBOutlet var textFieldUserLogin: UITextField!
    @IBOutlet var textFieldUserPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: IBActions
    @IBAction func userLoginWillBeTapped() {
        
    }
    
    @IBAction func userForgotLoginWillBeTapped() {
        presentAlert(withTitle: "C'mon!", message: "Your user name is *User*")
    }
    
    @IBAction func userForgotPasswordWillBeTapped() {
        presentAlert(withTitle: "C'mon!", message: "Your password is *123321*")
    }
    

}

// MARK: Extension

extension UIViewController {
    
    func presentAlert(withTitle title: String, message : String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
