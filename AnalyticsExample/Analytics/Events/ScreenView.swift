//
//  ScreenView.swift
//  AnalyticsExample
//
//  Created by Drew Beaupre on 2018-02-13.
//  Copyright © 2018 drew.beaupre. All rights reserved.
//

import Foundation

extension AppEvents{

    struct ScreenView: ScreenEvent{
        
        var screenName: String
        
        var firstTimeUser: Bool
        
        var userSignedUp: Bool
        
        var eventProperties: [String : Any]?{
            return [
                "First Time User": firstTimeUser,
                "Has Signed Up": userSignedUp
            ]
        }
    }
}


