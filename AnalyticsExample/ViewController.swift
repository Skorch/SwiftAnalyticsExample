//
//  ViewController.swift
//  AnalyticsExample
//
//  Created by Drew Beaupre on 2018-02-13.
//  Copyright © 2018 drew.beaupre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hasSignedUp = false
    var firstTime = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var screenName: String{
        return self.title ?? "unknown"
    }

    @IBAction func screenViewTapped(_ sender: UIButton){
        AppEvents.ScreenView(screenName: screenName, firstTimeUser: firstTime, userSignedUp: hasSignedUp).publish()
    }

    @IBAction func trackEvent1Tapped(_ sender: UIButton){
        hasSignedUp = true
        AppEvents.SignedUp(eventScreen: screenName, gender: .male ).publish()
    }

    @IBAction func trackEvent2Tapped(_ sender: UIButton){
        firstTime = false
        AppEvents.IdentifyUser(userId: "user 123", firstName: "First NAme", lastName: "Last NAme").publish()
    }

}

