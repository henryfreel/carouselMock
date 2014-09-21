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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressBackButton(sender: UIButton) {
        
        navigationController?.popToRootViewControllerAnimated(true)
    }
    

}
