//
//  ConversationsViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/20/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var newImage: UIImageView!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressBackButton(sender: UIButton) {
        
        performSegueWithIdentifier("backtoFeedSegue", sender: self)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        var initalVal = defaults.integerForKey("no_share")
        
        if (initalVal == 1) {
            println("you shared")
            newImage.hidden = false
            
        }
        
    }

}
