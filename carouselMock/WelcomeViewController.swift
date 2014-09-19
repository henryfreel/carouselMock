//
//  WelcomeViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/19/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var takeCarouselButton: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        takeCarouselButton.hidden = true
        
        welcomeScrollView.contentSize = CGSizeMake(1280, 568)
        welcomeScrollView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        var page = Int(welcomeScrollView.contentOffset.x / 320)
        pageControl.currentPage = page
        
        println("This is it \(welcomeScrollView.contentOffset.x)")
        
        if (welcomeScrollView.contentOffset.x == 960) {
            takeCarouselButton.hidden = false
        }
        
    }

}
