//
//  ViewController.swift
//  Change Icon
//
//  Created by Shahzaib Mumtaz on 05/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK:- Light Button Actions.
    
    @IBAction func btnLightAction(_ sender: UIButton) {
        
        DispatchQueue.main.async {
            self.changeIcon(to: "Light")
        }
    }
    
    // MARK:- Light Button Actions.
    
    @IBAction func btnDarkAction(_ sender: UIButton) {
        
        DispatchQueue.main.async {
            self.changeIcon(to: "Dark")
        }
    }
    
    // MARK:- Function to change app icon.
    
    func changeIcon(to name: String?) {
        
        // Check if the app supports alternating icons
        
        guard UIApplication.shared.supportsAlternateIcons else {
            return;
        }
        
        // Change the icon to a specific image with given name
        
        UIApplication.shared.setAlternateIconName(name) { (error) in
            
            // After app icon changed, print our error or success message
            
            if let error = error {
                print("App icon failed to due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully.")
            }
        }
    }
}

