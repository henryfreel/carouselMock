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
    @IBOutlet weak var learnMoreButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedScrollVoew.contentSize = feedImage.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPanImage(sender: UIPanGestureRecognizer) {
        
        for var i = 0;i<10;i++
        {
            feedScrollVoew.contentOffset.y = 50
        }
        
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
