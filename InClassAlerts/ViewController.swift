//
//  ViewController.swift
//  InClassAlerts
//
//  Created by zweakland on 3/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        // calling the alert method
        showAlert()
        // calling the actionsheet method
        // showActionSheet()
    }
    
    func showAlert(){
        // create the alert object
        let alert = UIAlertController(title: "Important Update", message: "Would you like to update your version?", preferredStyle: .alert)
        //add a Dismiss button to our alert
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in print("Pressed Dismiss")}))
        
        //present it to the screen
        present(alert, animated: true)
        
    }
    
    func showActionSheet(){
        // create action sheet object
        let actionSheet = UIAlertController(title: "Important Update", message: "Would you like to update your version?", preferredStyle: .actionSheet)
        // add a Dismiss button to our actionSheet
        actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in print("Pressed Dismiss")}))
        // show actionsheet on screen
        present(actionSheet, animated: true)
    }
    
}

