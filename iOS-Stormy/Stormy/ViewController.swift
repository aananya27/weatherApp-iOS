//
//  ViewController.swift
//  Stormy
//
//  Created by Aananya on 10/8/18.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate let darkSkyApiKey = "9c8575227b31eb585d74626b6d8d4e00"
    
    override func viewDidLoad() {
        let base = URL(string: "https://api.darksky.net/forecast/\(darkSkyApiKey)/")
        //might need a change:
        let location = "37.8267,-122.4233"
        let forecastUrl = URL(string: location, relativeTo: base)
        
        //bad practice for now!
        let weatherData = try! Data(contentsOf: forecastUrl!)
        // print(weatherData)
        let json = try! JSONSerialization.jsonObject(with: weatherData, options: [])
        print(json)
        
        super.viewDidLoad()
        let currentWeather = CurrentWeather(temperature: 85.0, humidity: 0.8, precipProbability: 10, summary: "hot", icon: "clear-day")
        let viewModel = CurrentWeatherViewModel(model: currentWeather)
        displayWeather(using: viewModel)
    }
    func displayWeather(using viewModel: CurrentWeatherViewModel){
        currentTemperatureLabel.text = viewModel.temperature
        currentHumidityLabel.text = viewModel.huidity
        currentPrecipitationLabel.text = viewModel.precipitationProbability
        currentSummaryLabel.text = viewModel.summary
        currentWeatherIcon.image = viewModel.icon
    }
}

