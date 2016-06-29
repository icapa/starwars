//
//  WikiViewController.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 28/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit

class WikiViewController: UIViewController, UIWebViewDelegate{

    //MARK: - Properties
    var model : StarWarsCharacter
    
    @IBOutlet weak var browser: UIWebView!
    
    @IBOutlet weak var activityView: UIActivityIndicatorView!
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
        browser.delegate = self
        
        activityView.startAnimating()
        browser.loadRequest(NSURLRequest(URL: model.url))
        
    }
    
    //MARK: - View Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        syncModelWithView()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let nc = NSNotificationCenter.defaultCenter()
        nc.addObserver(self, selector: #selector(characterDidChange), name: CharacterDidChangeNotification, object: nil)
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        let nc = NSNotificationCenter.defaultCenter()
        nc.removeObserver(self)
        
    }

    //MARK: - Memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func characterDidChange(notification: NSNotification){
        
        // Sacar el userInfo
        let info = notification.userInfo
        // Sacar el personaje
        let char = info![CharacterKey] as? StarWarsCharacter
        
        model = char!
        
        // Actualizar el modelo
        
        // Sincronizar las vistas
        syncModelWithView()
    }
    
    //MARK: - UIWebViewDelegate
    func webViewDidFinishLoad(webView: UIWebView) {
        // Parar el activity view y ocultarlo
        activityView.stopAnimating()
        activityView.hidden=true
        
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if navigationType == .LinkClicked || navigationType == .FormSubmitted{
            return false
        }else{
            return true
        }
        
    }
    

   
}
