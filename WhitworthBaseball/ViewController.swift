//
//  ViewController.swift
//  WhitworthBaseball
//
//  Created by Zachary P Goold on 10/23/15.
//  Copyright © 2015 Zachary P Goold. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
 //Properties
    @IBOutlet weak var PickQuery: UIPickerView!
    @IBOutlet weak var Test: UILabel!
    var user = 0

    @IBOutlet weak var PlayerSearch: UISearchBar!
    @IBOutlet weak var PlayerYear: UIPickerView!
    //@IBOutlet weak var ScrollContoller: UIScrollView!
    
    
    // Declaring a new array to hold choice and allow access to
    //outside functions
    var PickerData = ["Batting", "Pitching", "Fielding"]
    var Year = ["All", "2000", "2001", "2002", "2003", "2004", "2005"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // connect data
        PickQuery.delegate = self
        PickQuery.dataSource = self
        //ScrollContoller.contentSize.height = 1000
        PlayerYear.delegate = self
        PlayerYear.dataSource = self

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        return
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
       return 1
    }
    
    //The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == PickQuery {
         return PickerData.count
        } else {
            return Year.count
        }
        
    }
    
    //The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == PickQuery {
       return PickerData[row]
        } else {
        return Year[row]
        }
    }
    
    // Capture the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        user = row
      
    }
    
    
    
    
    //@IBAction func Submit(sender: AnyObject) {
        //if (user == 0) {
            //Result.text = "Correct"
        //}
        //else if (user == 1) {
            //Result.text = "Correct"
        //}
        //else if (user == 2) {
            //Result.text = "Correct"
        //}
        //else if (user == 3) {
            //Result.text = "Correct"
        //}
        //else {
            //Result.text = "Correct"
      //  }

    //}
    
    
    @IBAction func Button(sender: UIButton) {
        
        let vc : WebViewController = self.storyboard!.instantiateViewControllerWithIdentifier("webVC") as! WebViewController;
        let url = NSURL(string: "http://www.google.com")!;
        vc.url = url;
        self.navigationController?.pushViewController(vc, animated: true);
        
//        if (user == 0) {
//            Test.text = "Correct1"
//            }
//            else if (user == 1) {
//            Test.text = "Correct2"
//            }
//            else if (user == 2) {
//            Test.text = "Correct3"
//            }
//            else if (user == 3) {
//            Test.text = "Correct4"
//            }
//            else {
//            Test.text = "Correct5"
//              }

    }

}
