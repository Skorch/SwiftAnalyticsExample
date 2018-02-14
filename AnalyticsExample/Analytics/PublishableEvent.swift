//
//  PublishableEvent.swift
//  AnalyticsExample
//
//  Created by Drew Beaupre on 2018-02-13.
//  Copyright © 2018 drew.beaupre. All rights reserved.
//

import Foundation

protocol PublishableEvent{
    
    var eventProperties: [String: Any]? { get }
}

protocol TrackingEvent: PublishableEvent {
    
    var eventName: String { get }
}

protocol ScreenEvent: PublishableEvent{
    
    var screenName: String { get }
}

protocol IdentifyEvent: PublishableEvent{

    var userId: String { get }
    var firstName: String { get }
    var lastName: String { get }
}

extension PublishableEvent {
    
    func publish() -> Void{
        
        AnalyticsPublisher.sharedInstance.handleEvent(self)
    }
    
    var eventProperties: [String: Any]? {
        return [String: Any]()
    }
    
}
