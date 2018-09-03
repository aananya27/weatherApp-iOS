//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Aananya on 12/08/18.
// Copyright © 2018 aananya. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature :String
    let huidity : String
    let precipitationProbability : String
    let summary : String
    let icon : UIImage
    
    init(model: CurrentWeather) {
        
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        let humidityPercentValue = Int(model.humidity*100)
        self.huidity = "\(humidityPercentValue)%"
        let precipitationProbabilityPercentValue = Int(model.precipProbability*100)
        self.precipitationProbability = "\(precipitationProbabilityPercentValue)%"
        
        self.summary = model.summary
        self.icon = model.iconImage
        
        
    }
}
