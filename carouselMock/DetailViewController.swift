//
//  DetailViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/23/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var backgroundImage2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImage2.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSwipeUp(sender: UISwipeGestureRecognizer) {
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.1, options: nil, animations: {
            
            self.photoView.frame = CGRectMake(57, 14, 40, 40)
            self.backgroundImage.alpha = 0
            self.backgroundImage2.alpha = 1

            }, completion: { finished in
                self.performSegueWithIdentifier("shareSegue", sender: self)
        })
        
        //performSegueWithIdentifier("shareSegue", sender: self)
        println("yay")
    }

    override func viewDidAppear(animated: Bool) {
        self.backgroundImage.alpha = 1
        self.photoView.frame = CGRectMake(0, 127, 320, 320)
    }

}
