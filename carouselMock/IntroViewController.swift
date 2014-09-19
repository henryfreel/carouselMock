//
//  IntroViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/18/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var intro1Image: UIImageView!
    @IBOutlet weak var intro2Image: UIImageView!
    @IBOutlet weak var intro3Image: UIImageView!
    @IBOutlet weak var intro4Image: UIImageView!
    @IBOutlet weak var intro5Image: UIImageView!
    @IBOutlet weak var intro6Image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        intro2Image.transform = CGAffineTransformRotate(view.transform, CGFloat(-45 * M_PI / 180))
        //intro2Image.transform = CGAffineTransformMakeScale(5, 5)
        
        //intro2image.transform = CGAffinateTransformScale(intro2image.transform, 5, 5)
        
        
        introScrollView.delegate = self
        introScrollView.contentSize = CGSizeMake(320, 1136)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        var y = scrollView.contentOffset.y
            
        intro2Image.transform = CGAffineTransformRotate(view.transform, CGFloat(-45 * M_PI / 180))
        intro2Image.transform = CGAffineTransformMakeScale(5, 5)
        
        intro2Image.transform = CGAffineTransformMakeTranslation(0, y / 2)
        
        intro1Image.transform = CGAffineTransformMakeTranslation(0, scrollView.contentOffset.y)
        
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
