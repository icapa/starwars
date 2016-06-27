//
//  JSONProcessing.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 27/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation
import UIKit
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


//MARK - Decodification
func decode (starWarsCharacter json: JSONDictionary) throws -> StarWarsCharacter{
    // Validamos el dict
    guard let urlString = json["url"] as? String,
        url = NSURL(string: urlString)else {
        throw StarWarsError.wrongURLFormatForJSONResource
    }
    guard let imageName = json["imageFile"] as? String,
        image = UIImage(named: imageName) else {
            throw StarWarsError.resourcePintedByURLNotReachable
    
    }
    
    guard let soundName = json["soundFile"] as? String,
    soundURL = NSBundle.mainBundle().URLForResource(soundName),
        sound = NSData(contentsOfURL: soundURL) else{
            throw StarWarsError.resourcePintedByURLNotReachable
    }
    
    let firstName   = json["firstName"] as? String
    let lastName    = json["lastName"] as? String
    let alias       = json["alias"] as? String
    
    if let affiliation = json["affiliation"] as? String{
        return StarWarsCharacter(firstName: firstName, lastName: lastName, alias: alias, soundData: sound, photo: image, url: url, affiliation: StarWasAffiliation.byName(affiliation))
        
    }else{
        throw StarWarsError.wrongJSONFormat
    }
    
    
}


