//
//  coordinate.swift
//  Stormy
//
//  Created by Aananya on 27/05/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
struct Coordinate{
    let latitude: Double
    let longitude: Double
}
extension CoordinateL CustomStringConvertible{
    var description :String {
        return "\(latitude),\(longitude)"
    }
}
