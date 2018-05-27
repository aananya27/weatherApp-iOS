//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Aananya on 27/05/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
enum DarkSkyError: Error{
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
}
