//
//  DetailViewController.swift
//  Blog Reader app
//
//  Created by Sasha Dubikovskaya on 12.02.2019.
//  Copyright © 2019 Blog reader app. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        
        if let detail = detailItem {
            self.title = detail.value(forKey: "title") as! String 
            if let blogWebView = webView {
                blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

