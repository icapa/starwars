//
//  Errors.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 27/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation

// MARK - JSON Errors

enum StarWarsError : ErrorType {
    case wrongURLFormatForJSONResource
    case resourcePintedByURLNotReachable
    case jsonParsingError
    case wrongJSONFormat
    case nilJSONObject
}
