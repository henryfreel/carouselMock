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
    @IBOutlet weak var signInScrollView: UIScrollView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var logInFormImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        signInScrollView.contentSize = CGSizeMake(320, 502)
        
        self.emailTextField.alpha = 0
        self.passwordTextField.alpha = 0
        self.logInFormImage.alpha = 0
        self.emailTextField.transform = CGAffineTransformMakeTranslation(0, 50)
        self.passwordTextField.transform = CGAffineTransformMakeTranslation(0, 50)
        self.logInFormImage.transform = CGAffineTransformMakeTranslation(0, 50)
        
        UIView.animateWithDuration(1.0) {
            self.emailTextField.alpha = 1
            self.passwordTextField.alpha = 1
            self.logInFormImage.alpha = 1
            self.emailTextField.transform = CGAffineTransformTranslate(self.emailTextField.transform, 0, -50)
            self.passwordTextField.transform = CGAffineTransformTranslate(self.passwordTextField.transform, 0, -50)
            self.logInFormImage.transform = CGAffineTransformTranslate(self.logInFormImage.transform, 0, -50)
        }

        // Do any additional setup after loading the view.
    }


    
    /*-------------Text Field Conditionals START------------*/
    
    @IBAction func didPressSignIn(sender: UIButton) {
        
        //self.activityViewLoader.startAnimating()
        var alertViewSignIn = UIAlertView(title: "Signing in...", message: nil, delegate: self, cancelButtonTitle: nil)
        alertViewSignIn.show()
        
        delay(2, closure: { () -> () in
            
        //self.activityViewLoader.stopAnimating()
        alertViewSignIn.dismissWithClickedButtonIndex(0, animated: true)
        
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
    
    /*-------------Text Field Conditionals END------------*/
    
    /*-------------Key Board Event START------------*/
    
    func keyboardWillShow(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.05, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            println("Show!")
            
            self.signInScrollView.contentOffset.y = 130
            self.signInImage.center.y = 320
            self.signInButton.center.y = 305
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.05, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            println("Hide!")
            
            self.signInScrollView.contentOffset.y = 0
            self.signInImage.center.y = 450
            self.signInButton.center.y = 435
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)

        
        
    }
    
    /*-------------Key Board Event END------------*/

    @IBAction func onTapView(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func didPan(sender: UIPanGestureRecognizer) {
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
