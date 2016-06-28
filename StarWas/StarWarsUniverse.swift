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
    
    
    init(){
        // Cargar los datos de los dos JSON
        
        
    }
    
    var affiliationCount : Int{
        get{
            // cuantas afiliaciones hay
            return 0
        }
    }
    
    
    func characterCount(forAffiliation affiliation: StarWasAffiliation) -> Int{
        // Cuantos personajes para esa afiliacion
        return 0
    }
    
    func character(atIndex index: Int, forAffiliation affiliation: StarWasAffiliation)
        -> StarWarsCharacter{
            // El personaje nº index en la afiliacion affiliation
            return nil
    }
    
    func affiliationName(affiliation: StarWasAffiliation) -> String{
        return "Hola"
    }
    
    
    
    
    
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