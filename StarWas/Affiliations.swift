//
//  Affiliations.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 23/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation

enum StarWasAffiliation {
    
    case galacticEmpire
    case rebelAlliance
    case firstOrder
    case jabbaCriminalEmpire
    case unknown
    
    static func byName(name: String) -> StarWasAffiliation{
        let aff: StarWasAffiliation
        switch name {
        case "Galactic Empire":
            aff = .galacticEmpire
        case "Rebel Alliance":
            aff = .rebelAlliance
        case "Jabba's Criminal Empire":
            aff = .jabbaCriminalEmpire
        case "First Order":
            aff = .firstOrder
        default:
            aff = .unknown
        
        }
        return aff
    }
    
    static func byName(name : String?) -> StarWasAffiliation{
        guard case .Some(let affiliationName) = name else{
            return .unknown
        }
        return byName(affiliationName)
    }
    
}
