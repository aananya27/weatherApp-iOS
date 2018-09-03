//
//  JSONDownloader.swift
//  Stormy
//
//  Created by Aananya on 19/08/18.
// Copyright © 2018 aananya. All rights reserved.
//changes wrt Swift 4
import Foundation

class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    typealias JSON = [String: AnyObject]
    
    func jsonTask(with request: URLRequest, completionHandler completion: @escaping (JSON?, DarkSkyError?) -> Void) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, .requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? JSON
                        completion(json, nil)
                    } catch {
                        completion(nil, .jsonParsingFailure)
                    }
                } else {
                    completion(nil, .invalidData)
                }
            } else {
                completion(nil, .responseUnsuccessful(statusCode: httpResponse.statusCode))
            }
        }
        
        return task
    }
}









