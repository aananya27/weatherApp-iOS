//
//  darkSkyAPIClient.swift
//  Stormy
//
//  Created by Aananya on 27/05/18.
//  Copyright © 2017 Aananya. All rights reserved.
//

import Foundation
class darkSkyAPIClient{
     fileprivate let apiKey = "9c8575227b31eb585d74626b6d8d4e00"
    
    lazy var baseUrl: URL={
        return URL(string: "https://api.darksky.net/forecast/\(self.apiKey)/")!
    }()
    let downloader = JSONDownloader()
    typealias CurrentWeatherComlpetionHandler = (CurrentWeather? , DarkSkyError?)-> Void
    func getCurrentWeather(at coordinate : Coordinate , completionHandler completion: @escaping CurrentWeatherComlpetionHandler){
        guard let url = URL(string: coordinate.description, relativeTo: baseUrl) else {
            completion(nil, .invalidURL)
            return
        }
        let request = URLRequest(url: url)
        let task = downloader.JSONTask(with: request) { json , error in
            //do more here.. delegate to currentweaher.swift file
        }
        
    }
}

