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
    @IBOutlet weak var Stat: UIPickerView!
    @IBOutlet weak var PlayerSearch: UISearchBar!
    @IBOutlet weak var PlayerYear: UIPickerView!
    //@IBOutlet weak var ScrollContoller: UIScrollView!
    
    
    // Declaring a new array to hold choice and allow access to
    //outside functions
    var PickerData = ["All", "Trent Alsin", "Corey Anderson", "Eric Anderson", "Mike Anderson", "Spencer Ansett", "Nick Ashley", "Tommy Banta", "Stephen Baranowski", "Chris Bartenhagen", "Ryan Beecroft", "Dan Belet", "Ryan Beliel", "Drew Belton", "Scott Biglin", "Peter Birdwell", "Scott Birdwell", "Carson Blumenthal", "Andrew Bower", "Mitch Boylan”, “Adam Briceland”, “Richard Brown", "Julian Burgess", "Scott Carr", "Dalton Carter", "Joel Clark", "Rich Clubine", "Mac Collette”, “Nick Combo”, “Cory Cooper", "Joel Condreay", "Kyle Courtney", "Michael Cozad", "Josh Davis", "Jeremy Druffel", "Matt Duffie", "Troy Duppenthaler", "Andrew Durant", "Brandon Ellendt", "Phil Entel", "Joel Evans", "Jordan Farkas", "Aaron Farr", "Chad Flett", "Brent Flyberg", "Dustin Frank”, “Tucker Freeman", "Nick Froman" ]
    var Year = ["All", "2000", "2001", "2002", "2003", "2004", "2005"]
    var StatList = ["Batting", "Pitching", "Fielding"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // connect data
        PickQuery.delegate = self
        PickQuery.dataSource = self
        //ScrollContoller.contentSize.height = 1000
        PlayerYear.delegate = self
        PlayerYear.dataSource = self
        Stat.delegate = self
        Stat.dataSource = self

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
        } else if pickerView == PlayerYear{
            return Year.count
        } else {
            return StatList.count
        }
        
    }
    
    //The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == PickQuery {
       return PickerData[row]
        } else if pickerView == PlayerYear {
        return Year[row]
        } else {
        return StatList[row]
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
