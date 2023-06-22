//
//  WelcomeUserViewController.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 06.06.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var labelGreetings: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelGreetings.text = (labelGreetings.text ?? "") + userName + " \u{1F496}"
    }
    
    @IBAction func logOutPressed() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOut = segue.source as? LoginViewController else { return }
        logOut.textFieldUserLogin.text = ""
        logOut.textFieldUserPassword.text = ""
    }
    
}
