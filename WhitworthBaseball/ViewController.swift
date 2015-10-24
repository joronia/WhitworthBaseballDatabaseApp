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
    @IBOutlet weak var DisplayQuery: UITableView!
    @IBOutlet weak var SubmitQuery: UIButton!
    
    // Declaring a new array to hold choice and allow access to
    //outside functions
    var PickerData = ["Query 1", "Query 2", "Query 3", "Query 4", "Query 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // connect data
        PickQuery.delegate = self
        PickQuery.dataSource = self

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
        return PickerData.count
    }
    
    //The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return PickerData[row]
    }
    
    // Capture the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
      
    }
    

}

