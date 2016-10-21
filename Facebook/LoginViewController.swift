//
//  LoginViewController.swift
//  Facebook
//
//  Created by Nicholas Naudé on 20/10/2016.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var originalButtonCenter: CGPoint!
    var offsetButtonCenter: CGPoint!
    @IBOutlet weak var loginButton: UIButton!
    
    var originalActivityCenter: CGPoint!
    var offsetOriginalActivityCenter: CGPoint!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var originalFacebookLogoCenter: CGPoint!
    var offsetFacebookLogoCenter: CGPoint!
    @IBOutlet weak var facebookLogoImageView: UIImageView!
    
    var originalLoginFielsViewCenter: CGPoint!
    var offsetLoginFielsViewCenter: CGPoint!
    @IBOutlet weak var loginFieldsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originalButtonCenter = loginButton.center
        offsetButtonCenter = CGPoint(x: originalButtonCenter.x, y: originalButtonCenter.y - 150)
        originalActivityCenter = activityIndicator.center
        offsetOriginalActivityCenter = CGPoint(x: originalActivityCenter.x, y: originalActivityCenter.y - 150)
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) {(Notification) in
            print("Keyboard was  shown?")
            self.loginButton.center = self.offsetButtonCenter
        }
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) {(Notification) in
            print("Keyboard was  shown?")
            self.loginButton.center = self.originalButtonCenter
        }
    }
    @IBAction func didTapMainView(_ sender: AnyObject) {
        view.endEditing(true)
    }
}


