//
//  TrackEvent1.swift
//  AnalyticsExample
//
//  Created by Drew Beaupre on 2018-02-13.
//  Copyright © 2018 drew.beaupre. All rights reserved.
//

import Foundation

extension AppEvents{
    
    struct SignedUp: TrackingEvent{
        
        var eventName: String { return "Signed Up" }
        
        let eventScreen: String
        
        let gender: ISOGender
        
        var eventProperties: [String : Any]?{
            return [
                StandardEventProperties.screenName.rawValue: eventScreen,
                StandardEventProperties.gender.rawValue: gender.rawValue
            ]
        }
    }
    
}
