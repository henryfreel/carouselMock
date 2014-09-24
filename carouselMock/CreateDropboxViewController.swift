//
//  CreateDropboxViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/20/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class CreateDropboxViewController: UIViewController {
    @IBOutlet weak var checkMarkButton: UIButton!
    @IBOutlet weak var createScrollView: UIScrollView!
    @IBOutlet weak var createImage: UIImageView!
    @IBOutlet weak var createButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        createScrollView.contentSize = CGSizeMake(320, 502)

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressCheckbox(sender: UIButton) {
        
        checkMarkButton.selected = !checkMarkButton.selected
    }
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
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
            
            self.createScrollView.contentOffset.y = 130
            self.createImage.center.y = 305
            self.createButton.center.y = 305
            
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
            
            self.createScrollView.contentOffset.y = 0
            self.createImage.center.y = 490
            self.createButton.center.y = 490
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }

}
