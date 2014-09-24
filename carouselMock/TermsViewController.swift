//
//  TermsViewController.swift
//  carouselMock
//
//  Created by Henry Freel on 9/20/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {
    @IBOutlet weak var termsWebView: UIWebView!
    @IBOutlet weak var doneButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://dropbox.com/terms?mobile=1")
        let request = NSURLRequest(URL: url)
        termsWebView.loadRequest(request)
        
    }
    
    
    @IBAction func didPressDoneButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
