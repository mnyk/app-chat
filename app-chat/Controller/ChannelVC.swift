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
    

    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func preapreForUnwind(segue: UIStoryboardSegue){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth =
            self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_ :)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                                                        //how much the rear VC is shown, from whole view subtract 60
    
    }
    
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        //when we push the login btn -> seque
        if AuthService.instance.isLoggedIn {
            //show profile page
            let profile = profileVC()
            profile.modalPresentationStyle = .custom
            present(profile, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: TO_LOGIN, sender: nil)
        
        }
    }
    @objc func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        } else {
            loginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
        }
    }

}
