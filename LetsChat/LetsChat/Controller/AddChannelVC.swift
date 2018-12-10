//
//  AddChannelVC.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 10/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var channelDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    @IBAction func closeModalPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createChannelPress(_ sender: Any) {
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameText.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedStringKey.foregroundColor : textFieldPlaceHolder])
        channelDesc.attributedPlaceholder = NSAttributedString(string: "Description", attributes: [NSAttributedStringKey.foregroundColor : textFieldPlaceHolder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
}
