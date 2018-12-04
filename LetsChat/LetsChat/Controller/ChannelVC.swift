//
//  ChannelVC.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 04/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    @IBAction func loginButtonPress(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }

}
