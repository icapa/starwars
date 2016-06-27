//
//  JSONProcessing.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 27/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation
/*
 {
 "firstName"    : null,
 "lastName"     : "Palpatine",
 "alias"        : "Darth Sidious",
 "soundFile"    : "palpatine.caf",
 "imageFile"    : "palpatine.jpg",
 "jedi"         : false,
 "sith"         : true,
 "affiliation"  : "Galactic Empire",
 "url"          : "https://en.wikipedia.org/wiki/Palpatine",
 "midichlorians": 9000
 },
 */

//MARK: - Aliases
// Para representar JSON en swift usamos estos tres objetos
typealias JSONObject        = AnyObject
typealias JSONDictionary    = [String : JSONObject]
typealias JSONArray         = [JSONDictionary]



