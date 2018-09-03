//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Aananya on 03/09/18.
// Copyright © 2018 aananya. All rights reserved.
//


import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
}
