//
//  BiographyViewController.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 23.06.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    
   
    @IBOutlet var biographyLabelFieldAge: UILabel!
    @IBOutlet var biographyLabelFieldGender: UILabel!
    @IBOutlet var biographyLabelFieldCompany: UILabel!
    @IBOutlet var biographyLabelFieldPost: UILabel!
    @IBOutlet var biographyLabelFieldMyOpinion: UILabel!
    @IBOutlet var biographyLabelFieldParentsOpinion: UILabel!
    
    
    
    override func viewDidLoad() {
        biographyLabelFieldAge.text = userFirst.age
        biographyLabelFieldGender.text = userFirst.gender
        biographyLabelFieldCompany.text = userFirst.company
        biographyLabelFieldPost.text = userFirst.post
        biographyLabelFieldMyOpinion.text = userFirst.myOpinion
        biographyLabelFieldParentsOpinion.text = userFirst.parentsOpinion
    }
    
    
}
