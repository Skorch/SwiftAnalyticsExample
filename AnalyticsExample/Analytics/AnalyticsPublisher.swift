//
//  AnalyticsPublisher.swift
//  AnalyticsExample
//
//  Created by Drew Beaupre on 2018-02-13.
//  Copyright © 2018 drew.beaupre. All rights reserved.
//

import Foundation

class AnalyticsPublisher{
    
    private let serialQueue = DispatchQueue(label: "com.drew.beaupre.dropshift.analytics.segment")
    
    static let sharedInstance: AnalyticsPublisher = {
        return AnalyticsPublisher()
    }()
    
    
    func handleEvent(_ event: PublishableEvent) -> Void{
        
        if let track = event as? TrackingEvent{
            trackEvent(named: track.eventName, properties: track.eventProperties)
        }
        
        if let screen = event as? ScreenEvent{
            screnView(named: screen.screenName, properties: screen.eventProperties)
        }
        
        if let identify = event as? IdentifyEvent{
            identifyUser(userId: identify.userId, firstName: identify.firstName, lastName: identify.lastName, customTraits: identify.eventProperties)
        }
        

    }
    
    private func screnView(named name: String, properties: [String: Any]?){
        
        print("Screen Viewed: \(name)")
        
        if let properties = properties{
            
            print("With Properties: \(properties)")
        }
    }
    
    private func trackEvent(named name: String, properties: [String: Any]?){
        
        print("Track Event: \(name)")
        
        if let properties = properties{
            
            print("With Properties: \(properties)")
        }
    }
    
    private func identifyUser(userId: String, firstName: String, lastName: String, customTraits: [String: Any]?){

        print("Identify User: \(userId) named \(firstName) \(lastName)")

        if let traits = customTraits{

            print("With traits: \(traits)")
        }
    }
    
}
