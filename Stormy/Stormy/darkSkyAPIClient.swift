//
//  darkSkyAPIClient.swift
//  Stormy
//
//  Created by Aananya on 27/05/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
class darkSkyAPIClient{
     fileprivate let apiKey = "9c8575227b31eb585d74626b6d8d4e00"
    
    lazy var baseUrl: URL={
        return URL(string: "https://api.darksky.net/forecast/\(self.apiKey)/")!
    }()
    let downloader = JSONDownloader()
    typealias CurrentWeatherComlpetionHandler = (CurrentWeather? , DarkSkyError?)-> Void
    func getCurrentWeather(at coordinate : Coordinate , completionHandler completion: @escaping CurrentWeatherComlpetionHandler)
}

