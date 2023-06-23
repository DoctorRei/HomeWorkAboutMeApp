//
//  ViewController.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 06.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet var textFieldUserLogin: UITextField!
    @IBOutlet var textFieldUserPassword: UITextField!
    let userFirst = User()
    
    //MARK: Segue Settings & Hide Keyboard
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC =
                segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = textFieldUserLogin.text ?? ""
        return
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: IBActions
    @IBAction func userLoginWillBeTapped() {
        let userCheckLogin = textFieldUserLogin.text
        let userCheckPassword = textFieldUserPassword.text
        
        if userCheckLogin == userFirst.userName &&
            userCheckPassword == userFirst.userPassword {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            presentAlert(withTitle: "Sorry",
                         message: "Your login or password is wrong")
        }
    }
    
    @IBAction func userForgotLoginWillBeTapped() {
        presentAlert(withTitle: "C'mon!",
                     message: "Your user name is \(userFirst.userName)")
    }
    
    @IBAction func userForgotPasswordWillBeTapped() {
        presentAlert(withTitle: "C'mon!",
                     message: "Your password is \(userFirst.userPassword)")
    }
    
    @IBAction func unwindToLogin( unwindSegue: UIStoryboardSegue) {
        textFieldUserLogin.text = ""
        textFieldUserPassword.text = ""
    }
}

// MARK: Extension

extension LoginViewController {
    
    func presentAlert(withTitle title: String, message : String) {
        
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.textFieldUserPassword.text = ""
        }
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
