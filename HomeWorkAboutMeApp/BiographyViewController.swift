//
//  BiographyViewController.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 23.06.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    var labelTextTest = ""
    var someText = ""
    @IBOutlet var biographyLabelField: UILabel!
    
    
    override func viewDidLoad() {
        biographyLabelField.text = labelTextTest 
    }
    
}
