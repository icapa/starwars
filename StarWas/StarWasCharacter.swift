//
//  StarWasCharacter.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 21/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation
import UIKit

class StarWarsCharacter : Comparable{
    
    enum Affiliate{
        case GalacticEmpire, RebelAlliance, FirstOrder
    }
    //MARK: - Stored properties
    let firstName   : String?
    let lastName    : String?
    let alias       : String?
    let soundData   : NSData
    let photo       : UIImage
    let url         : NSURL
    let affiliation : StarWasAffiliation
    
    //MARK: - Computed properties
    var name : String?{
        
        get{
            
            guard let first = firstName else{
                return lastName
            }
            guard let last = lastName else{
                return first
            }
            
            return"\(first) \(last)"
            
    
        }
    }
    
    //MASK: - Initialization
    init(firstName: String?, lastName: String?, alias: String?,
         soundData: NSData,photo: UIImage,url: NSURL, affiliation: StarWasAffiliation){
        self.firstName = firstName
        self.lastName=lastName
        self.alias=alias
        self.soundData=soundData
        self.photo=photo
        self.url=url
        self.affiliation = affiliation
        
    }
    
    
    convenience init(alias : String?, soundData: NSData, photo: UIImage,
                     url: NSURL, affiliation: StarWasAffiliation){
        
        self.init(firstName:nil ,
                  lastName: nil,
                  alias: alias,
                  soundData: soundData,
                  photo: photo,
                  url: url,
                  affiliation: affiliation)
    }
    
    //MARK: - Proxies
    var proxyForComparison : String{
        get{
            return "\(firstName)\(lastName)\(alias)\(url)"
        }
    }
    
    var proxyForSorting : String{
        get{
            return proxyForComparison
        }
    }
    
}


//MARK: - Equatable & Comparable
func == (lhs: StarWarsCharacter, rhs: StarWarsCharacter) -> Bool{
    
    // Esto es nuevo, si la clase es distinta, vale
    guard (lhs.dynamicType === rhs.dynamicType) else{
        return false
    }
    
    
    guard !(lhs === rhs) else{
        return true
    }
    
    return lhs.proxyForComparison == rhs.proxyForComparison
}

func <(lhs: StarWarsCharacter, rhs: StarWarsCharacter) -> Bool{
    return lhs.proxyForSorting < rhs.proxyForSorting
}

//MARK: - Extensions

extension StarWarsCharacter: CustomStringConvertible{
    var description: String{
        get{
            if let name = name, alias=alias{
                return "<\(self.dynamicType) -- \(name) -- \(alias)>"
            }
            return "<\(self.dynamicType)>"
        }
    }
}

