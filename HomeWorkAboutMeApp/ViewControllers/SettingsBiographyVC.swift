//
//  SettingsBiographyVC.swift
//  HomeWorkAboutMeApp
//
//  Created by Акира on 24.06.2023.
//

import UIKit

class SettingsBiographyVC: UIViewController {

    
    @IBAction func unwindSave( for segue: UIStoryboardSegue) {
        guard let settingsSave = segue.destination as? UITabBarController else { return }
        guard let somesss = settingsSave.viewControllers else { return }
        print(somesss)
        
        
    }
    
}
