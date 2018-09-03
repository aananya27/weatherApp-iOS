//
//  Coordinate.swift
//  Stormy
//
//  Created by Aananya on 03/09/18.
// Copyright © 2018 aananya. All rights reserved.
//


import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
    
    static var alcatrazIsland: Coordinate {
        return Coordinate(latitude: 37.8267, longitude: -122.4233)
    }
}
