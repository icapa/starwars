//
//  Affiliations.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 23/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation

enum StarWasAffiliation : String {
    
    case galacticEmpire = "Galactic Empire"
    case rebelAlliance  = "Rebel Alliance"
    case firstOrder     = "First Order"
    case jabbaCriminalEmpire    = "Jabba's Criminal Empire"
    case unknown = "Unknown"
    
    static func byName(name: String) -> StarWasAffiliation{
        let aff: StarWasAffiliation
        switch name {
        case StarWasAffiliation.galacticEmpire.rawValue:
            aff = .galacticEmpire
        case StarWasAffiliation.rebelAlliance.rawValue:
            aff = .rebelAlliance
        case StarWasAffiliation.jabbaCriminalEmpire.rawValue:
            aff = .jabbaCriminalEmpire
        case StarWasAffiliation.firstOrder.rawValue:
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
