//
//  CreateAccountVC.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 04/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePress(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
