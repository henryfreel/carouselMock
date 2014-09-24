//
//  ShareViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/23/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.alpha = 0
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: nil, animations: {
            
        self.backgroundImage.alpha = 1
            
    }, nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
