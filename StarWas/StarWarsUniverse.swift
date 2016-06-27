//
//  StarWarsUniverse.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 23/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit

class StarWarsUniverse {
    //MARK: Utility types
    typealias StarWarsArray         = [StarWarsCharacter]
    typealias StarWarsDictionary    = [StarWasAffiliation : StarWarsArray]
    
    //MARK: Utils
    func makeEmptyAffiliations () -> StarWarsDictionary{
        var d = StarWarsDictionary()
        d[.rebelAlliance]       = StarWarsArray()
        d[.galacticEmpire]      = StarWarsArray()
        d[.firstOrder]          = StarWarsArray()
        d[.jabbaCriminalEmpire] = StarWarsArray()
        d[.unknown]             = StarWarsArray()
        return d;
    }
    
    
    
}