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
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var intro1Image: UIImageView!
    @IBOutlet weak var intro2Image: UIImageView!
    @IBOutlet weak var intro3Image: UIImageView!
    @IBOutlet weak var intro4Image: UIImageView!
    @IBOutlet weak var intro5Image: UIImageView!
    @IBOutlet weak var intro6Image: UIImageView!
    
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = introImage.image!.size
        introScrollView.delegate = self
        //introScrollView.sendSubviewToBack(introImage)

        /*--------------Intro1Image--------------*/
        intro1Image.transform = CGAffineTransformMakeTranslation(-70, -295)
        intro1Image.transform = CGAffineTransformScale(intro1Image.transform, 1, 1)
        intro1Image.transform = CGAffineTransformRotate(intro1Image.transform, CGFloat(Double(-15) * M_PI / 180))
        
        /*--------------Intro2Image--------------*/
        intro2Image.transform = CGAffineTransformMakeTranslation(35, -270)
        intro2Image.transform = CGAffineTransformScale(intro2Image.transform, 1.65, 1.65)
        intro2Image.transform = CGAffineTransformRotate(intro2Image.transform, CGFloat(Double(-10) * M_PI / 180))
        
        /*--------------Intro3Image--------------*/
        intro3Image.transform = CGAffineTransformMakeTranslation(10, -437)
        intro3Image.transform = CGAffineTransformScale(intro3Image.transform, 1.7, 1.7)
        intro3Image.transform = CGAffineTransformRotate(intro3Image.transform, CGFloat(Double(10) * M_PI / 180))
        
        /*--------------Intro4Image--------------*/
        intro4Image.transform = CGAffineTransformMakeTranslation(78, -408)
        intro4Image.transform = CGAffineTransformScale(intro4Image.transform, 1.6, 1.6)
        intro4Image.transform = CGAffineTransformRotate(intro4Image.transform, CGFloat(Double(10) * M_PI / 180))
        
        /*--------------Intro5Image--------------*/
        intro5Image.transform = CGAffineTransformMakeTranslation(-108, -515)
        intro5Image.transform = CGAffineTransformScale(intro5Image.transform, 1.6, 1.6)
        intro5Image.transform = CGAffineTransformRotate(intro5Image.transform, CGFloat(Double(10) * M_PI / 180))
        
        /*--------------Intro6Image--------------*/
        intro6Image.transform = CGAffineTransformMakeTranslation(-95, -500)
        intro6Image.transform = CGAffineTransformScale(intro6Image.transform, 1.65, 1.65)
        intro6Image.transform = CGAffineTransformRotate(intro6Image.transform, CGFloat(Double(-10) * M_PI / 180))
        
    }

    
    func scrollViewDidScroll(introScrollView: UIScrollView) {
       
        var offset = Float(introScrollView.contentOffset.y)
        
        println(offset)
        
        if (offset < 568) && (offset > 0) {
        
        /*--------------Intro1Image--------------*/
        
        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -70, r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -295, r2Max: 0)
        var scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
            
        intro1Image.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        intro1Image.transform = CGAffineTransformScale(intro1Image.transform, CGFloat(scale1), CGFloat(scale1))
        intro1Image.transform = CGAffineTransformRotate(intro1Image.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        /*--------------Intro2Image--------------*/
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 35, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -270, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        intro2Image.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        intro2Image.transform = CGAffineTransformScale(intro2Image.transform, CGFloat(scale2), CGFloat(scale2))
        intro2Image.transform = CGAffineTransformRotate(intro2Image.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        /*--------------Intro3Image--------------*/
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -437, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        intro3Image.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        intro3Image.transform = CGAffineTransformScale(intro3Image.transform, CGFloat(scale3), CGFloat(scale3))
        intro3Image.transform = CGAffineTransformRotate(intro3Image.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        /*--------------Intro4Image--------------*/
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 78, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        intro4Image.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        intro4Image.transform = CGAffineTransformScale(intro4Image.transform, CGFloat(scale4), CGFloat(scale4))
        intro4Image.transform = CGAffineTransformRotate(intro4Image.transform, CGFloat(Double(rotation4) * M_PI / 180))
            
        /*--------------Intro5Image--------------*/
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -108, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -515, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        intro5Image.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        intro5Image.transform = CGAffineTransformScale(intro5Image.transform, CGFloat(scale5), CGFloat(scale5))
        intro5Image.transform = CGAffineTransformRotate(intro5Image.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        /*--------------Intro6Image--------------*/
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -95, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        intro6Image.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        intro6Image.transform = CGAffineTransformScale(intro6Image.transform, CGFloat(scale6), CGFloat(scale6))
        intro6Image.transform = CGAffineTransformRotate(intro6Image.transform, CGFloat(Double(rotation6) * M_PI / 180))
        }
        
        
    }

}
