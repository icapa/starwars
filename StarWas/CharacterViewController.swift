//
//  CharacterViewController.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 27/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit
class CharacterViewController: UIViewController {
    //MARK: - Properties
    let model : StarWarsCharacter
    
    @IBOutlet weak var photoView: UIImageView!
    
    //MARK: - Initialization
    init(model: StarWarsCharacter){
        self.model = model
        super.init(nibName: "CharacterViewController", bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func syncModelWithView(){
        //Photo
        photoView.image = model.photo
        
        //Alias
        title = model.name
        
    }
    
    @IBAction func displayWiki(sender: AnyObject) {
        // Crear un wikiCV
        let wVC = WikiViewController(model: model)
        
        // Hacer un push sobre mi NavigationController
        navigationController?.pushViewController(wVC, animated: true)
    }
    //MARK: - Actions
    @IBAction func playSound(sender: AnyObject) {
    }
    
    
    // should -- will -- did
    override func viewDidLoad() {
        super.viewDidLoad()
        // Antes de que las vista tenga sus dimensiones
        // Una sola vez
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Para que el VC se ajuste al espacio que deja el navigation
        //edgesForExtendedLayout = .None
        
        // Justo antes de mostrarse (después de viewDidLoad)
        // Posiblemente más de una vez
        syncModelWithView()
        
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
}
