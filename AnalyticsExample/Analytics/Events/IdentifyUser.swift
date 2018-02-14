//
//  IdentifyUser.swift
//  AnalyticsExample
//
//  Created by Drew Beaupre on 2018-02-13.
//  Copyright © 2018 drew.beaupre. All rights reserved.
//

import Foundation

extension AppEvents{
    
    struct IdentifyUser: IdentifyEvent{

        var userId: String

        var firstName: String

        var lastName: String
    }
    
}
