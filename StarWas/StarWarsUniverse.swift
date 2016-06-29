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
    
    
    //MARK: - Properties
    //-- Se puede inicializar, poner estatica la funcion u opcional
    // Huir siempre de los opcionales
    var dict : StarWarsDictionary = StarWarsDictionary()
    
    // Todo aquello que pueda fallar se valide fuera, encaja mejor
    // con swift que el inicializador no falle nunca, salvo que no
    // sea por memoria
    
    init(characters chars: StarWarsArray){
        // Crea un diccionario vacio
        dict = makeEmptyAffiliations()
        
        // !! Se carga el json fuera del init, para que sea más sencillo
        
        // Nos pateamos el array en bruto y asignamos segun aficilacion
        // each es variable, puede ser element, i, etc....
        for each in chars {
            
            dict[each.affiliation]?.append(each)

        }
        
        
        
        
    }
    var affiliationCount : Int{
        get{
            // cuantas afiliaciones hay
            return dict.count   // Una cerdada pero es como hay que hacerlo ahora
        }
    }
    
    
    func characterCount(forAffiliation affiliation: StarWasAffiliation) -> Int{
        // Cuantos personajes para esa afiliacion
        guard let count = dict[affiliation]?.count else{
            return 0
        }
        return count
    
    }
    
    
    func character(atIndex index: Int, forAffiliation affiliation: StarWasAffiliation)
        -> StarWarsCharacter{
        let chars = dict[affiliation]!
        let char = chars[index]
        
        return char
        
    }
 
    
    func affiliationName(affiliation: StarWasAffiliation) -> String{
        // Raw value, el valor que tiene asociado cada enum
        return affiliation.rawValue
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