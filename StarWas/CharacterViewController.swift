//
//  CharacterViewController.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 27/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit
class CharacterViewController: UIViewController {
    let model : StarWarsCharacter
    
    init(model: StarWarsCharacter){
        self.model = model
        super.init(nibName: "CharacterViewController", bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
