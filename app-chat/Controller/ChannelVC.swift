//
//  ChannelVC.swift
//  app-chat
//
//  Created by mateusz on 09.10.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
                                                        //how much the rear VC is shown, from whole view subtract 60
    
    }

}
