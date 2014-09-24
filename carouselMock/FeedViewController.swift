//
//  FeedViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/20/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var feedScrollVoew: UIScrollView!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var photo: UIButton!
    @IBOutlet weak var navImage: UIImageView!
    @IBOutlet weak var dateImage: UIImageView!
    @IBOutlet weak var learnMoreImage: UIButton!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults.setInteger(0, forKey: "no_share")
        defaults.synchronize()
        
        feedImage.alpha = 1
        
        
        feedScrollVoew.contentSize = feedImage.image!.size

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        //UIView.animateWithDuration(0.5, animations: {
            self.feedImage.alpha = 1
            self.navImage.alpha = 1
            self.dateImage.alpha = 1
            self.learnMoreImage.alpha = 1
        //})
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPanImage(sender: UIPanGestureRecognizer) {
        
        feedScrollVoew.contentOffset.y = 50
        
    }

    @IBAction func didPressImage(sender: UIButton) {
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.1, options: nil, animations: {
            
            self.photo.frame = CGRectMake(0, 62, 320, 320)
            self.feedImage.alpha = 0
            self.navImage.alpha = 0
            self.dateImage.alpha = 0
            self.learnMoreImage.alpha = 0
            
            }, completion: { finished in
                self.performSegueWithIdentifier("detailSegue", sender: self)
        })
    }

}
