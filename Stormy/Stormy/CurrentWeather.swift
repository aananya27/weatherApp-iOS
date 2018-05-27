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




















