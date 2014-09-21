//
//  SettingsViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/20/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var settingsScrollVIew: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var cancelButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollVIew.contentSize = settingsImage.image!.size

        // Do any additional setup after loading the view.
    }

    
    @IBAction func didPressCancelButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
   
}
