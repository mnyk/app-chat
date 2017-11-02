//
//  CreateAccountVC.swift
//  app-chat
//
//  Created by mateusz on 11.10.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func createAccountPressed(_ sender: Any) {
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)    } //back to main VC
    
}
