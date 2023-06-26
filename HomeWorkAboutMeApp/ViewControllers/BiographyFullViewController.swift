//
//  BiographyFullViewController.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 26.06.2023.
//

import UIKit

class BiographyFullViewController: UIViewController {

    @IBOutlet var fullBiographyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullBiographyLabel.text = userFirst.biographyFull
        

       
    }
    

   

}
