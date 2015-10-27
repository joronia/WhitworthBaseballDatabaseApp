//
//  WebViewController.swift
//  WhitworthBaseball
//
//  Created by Zachary P Goold on 10/26/15.
//  Copyright © 2015 Zachary P Goold. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet var webView : UIWebView!;
    var url : NSURL!;

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let request = NSURLRequest(URL: url);
        self.webView.loadRequest(request);
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
