//
//  WikiViewController.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 28/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit

class WikiViewController: UIViewController {

    //MARK: - Properties
    var model : StarWarsCharacter
    
    @IBOutlet weak var browser: UIWebView!
    
    //MARK: - Initialization
    init(model: StarWarsCharacter){
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Syncing
    func syncModelWithView(){
        browser.loadRequest(NSURLRequest(URL: model.url))
        
    }
    
    //MARK: - View Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK: - Memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
