//
//  UniverseViewController.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 29/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit

class UniverseViewController: UITableViewController {

    //MARK: - Properties
    let model : StarWarsUniverse
    
    
    //MARK: - Initialization
    init(model: StarWarsUniverse){
        self.model=model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // numero de secciones
        return model.affiliationCount
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Numero de personajes en una determinada afiliacion
        
        return model.characterCount(forAffiliation: getAffiliation(forSection:  section))
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Tipo de celda
        let cellId = "StarWarsCell"
        
        

        // Averiguar el personaje
        let character = model.character(atIndex: indexPath.row, forAffiliation: getAffiliation(forSection: indexPath.section))
        
        // Crear la celda
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellId)
        if cell == nil{
            // El opcional está vacío: hay que crearla a pelo
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: cellId)
        }
        
        // Sincronizar personaje -> celda
        cell?.imageView?.image = character.photo
        cell?.textLabel?.text = character.alias
        cell?.detailTextLabel?.text = character.name
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Afiliacion
        
        return getAffiliation(forSection: section).rawValue
    }



    //MARK: - Utilities
    func getAffiliation(forSection section : Int)->StarWasAffiliation{
        var aff : StarWasAffiliation = .unknown
        switch section {
        case 0:
            aff = .galacticEmpire
        case 1:
            aff = .rebelAlliance
        case 2:
            aff = .firstOrder
        case 3:
            aff = .jabbaCriminalEmpire
        default:
            aff = .unknown
        }
        return aff
    }

}
