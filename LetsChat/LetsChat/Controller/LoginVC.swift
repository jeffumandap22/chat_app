//
//  LoginVC.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 04/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //oulets
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var userPasswordText: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    @IBAction func loginPress(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        guard let email = userNameText.text , userNameText.text != "" else { return }
        guard let passWord = userPasswordText.text , userPasswordText.text != "" else { return }
        AuthService.instance.loginUser(email: email, password: passWord) { (success) in
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
    
    @IBAction func closePress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccountButtonPress(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setupView() {
        spinner.isHidden = true
        userNameText.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedStringKey.foregroundColor: textFieldPlaceHolder])
        userPasswordText.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: textFieldPlaceHolder])
        
    }
    
    

}
