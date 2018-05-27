//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Aananya on 27/05/18.
//  Copyright © 2017 Aananya. All rights reserved.
//

import Foundation
enum DarkSkyError: Error{
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case invalidURL
    case jsonParsingFailure
}
