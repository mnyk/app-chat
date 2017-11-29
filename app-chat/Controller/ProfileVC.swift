//
//  ProfileVC.swift
//  app-chat
//
//  Created by mateusz on 29.11.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    
    
    //outlets
    
    @IBOutlet weak var profileImg: UIImageView!
    
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeModalPressed(_ sender: Any) {
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
    }
    
}
