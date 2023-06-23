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
        
        print("Hello")
    }
}
