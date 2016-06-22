//
//  StarWasCharacter.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 21/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation
import UIKit

class StarWarsCharacter{
    
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
    let affiliate   : Affiliate
    
    //MARK: - Computed properties
    var name : String?{
        
        //TODO: Arreglar esto
        //Meter el enum
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
         soundData: NSData,photo: UIImage,url: NSURL, affiliate: Affiliate){
        self.firstName = firstName
        self.lastName=lastName
        self.alias=alias
        self.soundData=soundData
        self.photo=photo
        self.url=url
        self.affiliate=affiliate
    }
    
    
    
}
