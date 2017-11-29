//
//  ChannelVC.swift
//  app-chat
//
//  Created by mateusz on 09.10.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // outlets 
    

    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func preapreForUnwind(segue: UIStoryboardSegue){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth =
            self.view.frame.size.width - 60
                                                        //how much the rear VC is shown, from whole view subtract 60
    
    }
    
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        //when we push the login btn -> seque
        
        
        
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
