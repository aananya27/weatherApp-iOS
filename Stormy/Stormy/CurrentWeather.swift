//
//  CurrentWeather.swift
//  Stormy
//
//  Created by Aananya on 08/02/17.
//  Copyright © 2017 Aananya. All rights reserved.
//

import Foundation

struct CurrentWeather {
    //All these values even optional in the given API...
    //we take it as non optional wrt our data model,
    //because they would return non optional on current values.
    
    let temperature: Double
    let humidity: Double
    let precipitationProbability: Double
    let summary: String
    let icon: String  //map to image
}


extension CurrentWeather{
    struct Key {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipitationProbability = "precipProbability"
        static let summary = "summary "
        static let icon = "icon"
    }
    init? ( json: [String:AnyObject]){
        guard let tempValue = json[Key.temperature] as? Double,
        let humidityValue = json[Key.humidity] as? Double,
        let precipitationProbabilityValue = json[Key.precipitationProbability ] as? Double,
        let summaryString = json[Key.summary] as? String,
        let iconString = json[Key.icon] as? String else {return nil}
        
        self.temperature = tempValue
        self.humidity = humidityValue
        self.precipitationProbability = precipitationProbabilityValue
        self.summary = summaryString
        self.icon = iconString
    }
}

















