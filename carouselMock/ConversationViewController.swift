//
//  ConversationViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/23/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {
    var defaults = NSUserDefaults.standardUserDefaults()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        
        var initalVal = defaults.integerForKey("no_share")
        defaults.setInteger(1, forKey: "no_share")
        defaults.synchronize()
    }

}
