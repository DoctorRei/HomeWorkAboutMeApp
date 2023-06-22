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
    
    //MARK: Segue Settings & Hide Keyboard
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC =
                segue.destination as? WelcomeViewController else { return }
        // здесь проверяем, что экран на который мы переходим ис WelcomeViewController
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
        
        if userCheckLogin == UserFirst.userName &&
            userCheckPassword == UserFirst.userPassword {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            presentAlert(withTitle: "Sorry",
                         message: "Your login or password is wrong")
        }
    }
    
    @IBAction func userForgotLoginWillBeTapped() {
        presentAlert(withTitle: "C'mon!",
                     message: "Your user name is *User*")
    }
    
    @IBAction func userForgotPasswordWillBeTapped() {
        presentAlert(withTitle: "C'mon!",
                     message: "Your password is *123321*")
    }
    
    @IBAction func unwindToLogin( unwindSegue: UIStoryboardSegue) {
        textFieldUserLogin.text = ""
        textFieldUserPassword.text = ""
    }
    
    // Я приехал из отпуска и примерно 2-3 недели не прикосался к коду. К огромному сожалению. До всего допер сам, но вот вопрос к этому экшену. Почему у меня напротив unwindToLogin не стоит точка (слева), которая говорит, что у меня кнопка к чему-то привязана? Т.е напротив кнопок "забыл пароль" и т.д проставлено все, но с анваиндом этого нет. При этом все замечательно работает и дай бог здоровья этому методу. Даже текстфилды стираются. https://sun9-7.userapi.com/impg/TfnDz-wyXg69pHti66rujr0SA_nkbRbnbHswbg/Dzi9K9iAfEU.jpg?size=1140x259&quality=96&sign=0e25501d29ea06dbf4a668f41dafed43&type=album
    
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
