//
//  ForceSensitive.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 23/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import Foundation
import UIKit

class ForceSensivite: StarWarsCharacter{
    //MARK: - Stored Properties
    let midichlorians : Int
    
    //MARK - Initialization
    init(firstName: String?, lastName: String?, alias: String?,
         soundData: NSData,photo: UIImage,url: NSURL, affiliation: StarWasAffiliation,
         midichlorians: Int){
        
        self.midichlorians = midichlorians
        
        super.init(firstName: firstName, lastName: lastName, alias: alias,
                   soundData: soundData,photo: photo,url:url, affiliation: affiliation)
    
        
    }
    convenience init(jediWithFirstName: String?,
                     lastName: String?,
                     alias: String?,
                     soundData: NSData,
                     photo: UIImage,
                     url: NSURL,
                     midichlorians: Int){
        self.init(firstName: jediWithFirstName, lastName: lastName, alias: alias,
                  soundData: soundData,photo: photo,url:url,
            affiliation: .rebelAlliance,midichlorians:midichlorians)
        
    }
    convenience init(sithWithFirstName: String?,
                     lastName: String?,
                     alias: String?,
                     soundData: NSData,
                     photo: UIImage,
                     url: NSURL,
                     midichlorians: Int){
        self.init(firstName: sithWithFirstName, lastName: lastName, alias: alias,
                  soundData: soundData,photo: photo,url:url,
                  affiliation: .galacticEmpire,midichlorians:midichlorians)
        
    }
    
    //MARK - Proxies
    override var proxyForComparison : String{
        get{
            return "\(super.proxyForComparison) \(midichlorians)"
        }
    }
    override var proxyForSorting : String{
        get{
            let isSith = ((affiliation == .galacticEmpire) || (affiliation == .firstOrder)) ? "Z" : "X"
            
            return "\(isSith) \(super.proxyForSorting) \(midichlorians)"
        }
    }

    

}



