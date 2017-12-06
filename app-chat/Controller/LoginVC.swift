//
//  LoginVC.swift
//  app-chat
//
//  Created by mateusz on 11.10.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let userName = usernameTxt.text , usernameTxt.text != "" else { return }
        guard let pass = passwordTxt.text , passwordTxt.text != "" else { return }
        
        AuthService.instance.loginUser(email: userName, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
            
        }

    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    //close btn action
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setupView(){
        spinner.isHidden = true
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor:chattityPurplePlaceholder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor:chattityPurplePlaceholder])
    }
}
