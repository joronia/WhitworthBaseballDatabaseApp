//
//  ViewController.swift
//  WhitworthBaseball
//
//  Created by Zachary P Goold on 10/23/15.
//  Copyright © 2015 Zachary P Goold. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UISearchBarDelegate {
 //Properties
    @IBOutlet weak var PickQuery: UIPickerView!
    @IBOutlet weak var Test: UILabel!
    var user = 0
    @IBOutlet weak var Stat: UIPickerView!
    @IBOutlet weak var PlayerSearch: UISearchBar!
    @IBOutlet weak var PlayerYear: UIPickerView!
    var playerSelection = "All";
    var FullName = "";
    var yearSelection = "All";
    var statSelection = "Batting";
    
    
    // Declaring a new array to hold choice and allow access to
    //outside functions
    var PickerDataInital = ["All", "Trent Alsin", "Corey Anderson", "Eric Anderson", "Mike Anderson", "Spencer Ansett", "Nick Ashley", "Tommy Banta", "Stephen Baranowski", "Chris Bartenhagen", "Ryan Beecroft", "Dan Belet", "Ryan Beliel", "Drew Belton", "Scott Biglin", "Peter Birdwell", "Scott Birdwell", "Carson Blumenthal", "Andrew Bower", "Mitch Boylan", "Adam Briceland", "Richard Brown", "Julian Burgess", "Scott Carr", "Dalton Carter", "Joel Clark", "Rich Clubine", "Mac Collette", "Nick Combo", "Cory Cooper", "Joel Condreay", "Kyle Courtney", "Michael Cozad", "Josh Davis", "Jeremy Druffel", "Matt Duffie", "Troy Duppenthaler", "Andrew Durant", "Brandon Ellendt", "Phil Entel", "Joel Evans", "Jordan Farkas", "Aaron Farr", "Chad Flett", "Brent Flyberg", "Dustin Frank", "Tucker Freeman", "Nick Froman", "Billy Gaines", "Dan Gebbers", "John Gebbers", "Ben George", "Bryan Geraghty", "Collin Gibbs", "Jake Hanley", "Gregg Hare", "Steve Hare", "Greg Hata", "John Hauck", "Trenton Hauff", "Chad Headlee", "Kyle Henderson", "Tony Hendrickson", "Kent Hibbard", "Kash Hieb", "Taylor Hillmick", "Garrett Hoffnagle", "Chris Hughbanks", "Garrett Hughes", "Ryley Hunter", "Casey Isa", "Taylor Isadore", "Justin James", "JR Jarrell", "Nathan Jewett", "Nathan Johnson", "JJ Jones", "Danny Jordan", "Kittrick Kane", "Aaron Keller", "Kramer Kembel", "James King", "Austin Knighton", "Dillon Knighton", "Jeff Krogman", "Jake Krummel", "Kyle Krustangel", "Nate Lamberty", "Trey Leighton", "Aaron Libolt", "Van Lierman", "Justin Liu", "Spencer Locati", "Skyler Lookabill", "Jared Loveland", "Dan Lundeberg", "Ryan Lyski", "Cory Mack", "KC Mack", "Dave Marlow", "Mike Marlow", "Jason Martin", "Ben McCracken", "Justin McKitterick", "Taylor McMahon", "Jeremy McMillen", "Brian McPartland", "Steve Merriman", "Matt Miller", "Paul Miller", "Josh Mills", "AJ Milyard", "Marques Molett", "Matt Monahan", "Joel Morris", "Brett Moser", "Brian Moser", "Nick Motsinger", "Gerhard Muelheims", "Nick Muncy", "DJ Murray", "Brandon Muzatko", "Jason Myers", "Matt Neill", "James Nelson", "Matt Nelson", "Mitch Nelson", "Unknown Nelson", "Nick Newberry", "Eric Nikssarian", "Erik Nilson", "Bryan Noble","Liam Obrien", "Tom Obrien", "TJ Orchard", "Matt Oye", "Jordan Pearson", "Danny Pecka", "CJ Perry", "Cody Person", "Marlowe Peter", "Andrew Peterson", "George Petticrew", "Tyler Pfeffer", "JT Phelan", "Todd Phillips", "Ernest Policarpio", "Ben Price", "John Proffitt", "Ryan Pugh", "Darin Radke", "Dan Ramsay", "Mitch Ramsay", "John Rausch", "Caleb Reaber", "Mark Redmond", "KC Reese", "Kevin Reese", "Kurt Reese", "Ryan Reitmeier", "Jason Renner", "Michael Renner", "Jason Reynolds", "Stephen Reynolds", "Kyle Richardson", "Billy Rigsby", "Alex Robichaux", "Josh Rodland", "Nate Rodland", "Taylor Roelofs", "Jason Roorda", "Miguel Saldin", "Brian Savery", "Alex Scarpelli", "Dan Scheibe", "Eric Schnibbe", "Nick Schuerman", "Bryan Schutz", "Landon Scott", "Zach Scott", "Nick Scourey", "Aaron Sedler", "Trevor Sheffels", "Rob Shields", "Zach Shuholm", "Kyle Snell", "Ryan Snell", "Matt Squires", "Jordan Stapleton", "Jason Stark", "Travis Stolcis", "Michael Takemura", "Joel Tampien", "Josh Taylor", "Michael Taylor", "Zach Thibault", "Casey Thomas", "Blake Thoren", "Brad Tiefenthaler", "Travis Todd", "Joe Toney", "Luis Tovar", "Kevin Valerio", "Ray Valle", "Preston Van Doren", "Jeremy Van Voorhis", "Tyler VonDracek", "Scott Wagstaff", "Thomas Wakem", "Scott Ward", "Jason Weatherman", "Ryne Webb", "Kris White", "Jon Whiteside", "Michael Woodkey", "Mike Wooten", "Scott Yoshihara", "Cole Young", "Hector Zavala", "Brandon Zimmerman" ]
    var PickerData = [""];
    var Year = ["Career","All", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015"]
    var StatList = ["Batting", "Pitching", "Fielding"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PickerData = PickerDataInital;
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
        
        let str = self.pickerView(pickerView, titleForRow: row, forComponent: component);
        NSLog(str!)
        if pickerView == PickQuery {
            playerSelection = str!
            FullName = playerSelection.stringByReplacingOccurrencesOfString(" ", withString: "")
            
        } else if pickerView == PlayerYear {
            yearSelection = str!
        } else {
        statSelection = str!
    }
    }
    
    
    @IBAction func Button(sender: UIButton) {
        
     
       // surl=surl.appendContentsOf("?year=2014");
       //let url = NSURL(string: "http://cs1/Baseball/runSQLODBC.php")!;
       
       let vc : WebViewController = self.storyboard!.instantiateViewControllerWithIdentifier("webVC") as! WebViewController;
        
        if (statSelection == "Batting") {
            let myUrl = NSURL(string: "http://cs1/Baseball/runSQLODBCBat.php?"+"name="+FullName+"&year="+yearSelection)
            vc.url = myUrl;
        } else if (statSelection == "Pitching"){
            let myUrl = NSURL(string: "http://cs1/Baseball/runSQLODBCPitch.php?"+"name="+FullName+"&year="+yearSelection)
            vc.url = myUrl;
        } else{
            let myUrl = NSURL(string: "http://cs1/Baseball/runSQLODBCField.php?"+"name="+FullName+"&year="+yearSelection)
            vc.url = myUrl;
        }
    
        self.navigationController?.pushViewController(vc, animated: true);
        
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        NSLog(searchText);
        if  (searchText.characters.count == 0) {
        PickerData = PickerDataInital;
        }
        else {
        PickerData = PickerDataInital.filter({ (str) -> Bool in
            return str.containsString(searchText);
        })
        }
        PickQuery.reloadAllComponents();
    }

}
