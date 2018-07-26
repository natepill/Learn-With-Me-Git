//
//  CalendarViewController.swift
//  LearnWithMe
//
//  Created by Nathan Pillai on 7/26/18.
//  Copyright © 2018 Nathan Pillai. All rights reserved.
//

import UIKit
import EventKit
import EventKitUI

class CalendarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let dataSourceArray = ["Item 1", "Item 2", "Item 3"]
    
    @IBOutlet weak var calendarTableView: UITableView!
    
    func numberOfSectionsInTableView(calendarTableView: UITableView) -> Int {
        return 1 // This was put in mainly for my own unit testing
    }
    
    func tableView(_ calendarTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    
    func tableView(_ calendarTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Note:  Be sure to replace the argument to dequeueReusableCellWithIdentifier with the actual identifier string!
        let cell = calendarTableView.dequeueReusableCell(withIdentifier: "calendarEventCell") as! UITableViewCell
        
        cell.textLabel?.text = dataSourceArray[indexPath.row]
        // set cell's detailTextLabel.text property
        return cell
    }
    
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func checkCalendarAuthorizationStatus() {
        let status = EKEventStore.authorizationStatus(for: EKEntityType.event)
        
        switch (status) {
        case EKAuthorizationStatus.notDetermined:
            print("not Determined")
//            requestAccessToCalendar()
        case EKAuthorizationStatus.authorized:
            print("authorized")
//            loadCalendars()
//            refreshTableView()
        case EKAuthorizationStatus.restricted, EKAuthorizationStatus.denied:
//            needPermissionView.fadeIn()
            print("restricted")
            
        }
    }
    

   

}
