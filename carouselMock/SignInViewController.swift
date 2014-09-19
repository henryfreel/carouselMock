//
//  SignInViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/18/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInImage: UIImageView!
    @IBOutlet weak var createTestImage: UIImageView!
    @IBOutlet weak var activityViewLoader: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressSignIn(sender: UIButton) {
        
        self.activityViewLoader.startAnimating()
        
        delay(2, closure: { () -> () in
            
        self.activityViewLoader.stopAnimating()
        
        if (self.emailTextField.text == "") {
    
            var alertView = UIAlertView(title: "Email Required", message: "Please enter an email address", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
        } else if (self.passwordTextField.text == "") {
            
            var alertView = UIAlertView(title: "Password Required", message: "Please Enter a password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
        } else if (self.emailTextField.text == "Henry") && (self.passwordTextField.text == "password") {
                
                self.performSegueWithIdentifier("signInSegue", sender: self)
            
        } else {
            
            var alertView = UIAlertView(title: "Sign in Failed", message: "Please enter a valid emil address and password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
        }
        })

    }

    @IBAction func onTapView(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    
    
    
    
}
