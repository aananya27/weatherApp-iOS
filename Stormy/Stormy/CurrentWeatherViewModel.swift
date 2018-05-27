//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Aananya on 08/02/17.
//  Copyright © 2017 Aananya. All rights reserved.
//
//A view model's job is to collect data, format it in a certain way and then display it
// OOR A bridge object that does nothing more than format the data
import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let precipPercentValue = Int(model.precipitationProbability * 100)
        self.precipitationProbability = "\(precipPercentValue)%"
        
        self.summary = model.summary
        
        let weatherIcon = WeatherIcon(iconString: model.icon)
        self.icon = weatherIcon.image
    }
}











