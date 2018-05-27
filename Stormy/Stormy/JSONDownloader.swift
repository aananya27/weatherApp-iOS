//
//  JSONDownloader.swift
//  Stormy
//
//  Created by Aananya on 26/05/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
class JSONDownloader{
    let session : URLSession
    init(configuration: URLSessionConfiguration){
        self.session = URLSession(configuration: configuration)
        
    }
    
    convenience init(){
        self.init(configuration: .default)
        
    }
    typealias JSON = [String: AnyObject]
    
    func JSONTask(with request: URLRequest, comletionHandler completion: @escaping (JSON?,DarkSkyError? )-> Void) -> URLSessionDataTask{
        
        let task = session.dataTask(with:request){ data, response, error in
            //converting to http response
            guard let httpResponse = response as? HTTPURLResponse else{
            completion(nil, .requestFailed)
            return
            }
            if (httpResponse.statusCode == 200) {
                //happy path
                if let data = data {
                        do{
                            let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
                            completion(json,nil)
                            
                        } catch{
                            completion(nil, .jsonConversionFailure )
                        }
                        } else {
                        completion(nil, .invalidData)
                        }
                
                
            }else {
                //sad path
                completion(nil, .responseUnsuccessful)
            }
        }
        
        return task
        
        
    }
    
}
