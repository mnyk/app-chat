//
//  CreateAccountVC.swift
//  app-chat
//
//  Created by mateusz on 11.10.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

        
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)    } //back to main VC
    
}
