//
//  AppDelegate.swift
//  StarWas
//
//  Created by Iván Cayón Palacio on 21/6/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    
    
    
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /* Para las pruebas del modelo */
        
        // Crear instancia de modelo
        let sound = NSBundle.mainBundle().pathForResource("c3po", ofType: "caf")
        let sonido = NSData(contentsOfFile: sound!)
        
        let imagen = UIImage.init(named: "c3po.jpg")
        let laUrl = NSURL.fileURLWithPath("c3po.jpg")
        
        let prueba1 = StarWarsCharacter(alias: "ivan", soundData: sonido! , photo: imagen!, url: laUrl, affiliation: StarWasAffiliation.firstOrder);
        
        let prueba2 = StarWarsCharacter(alias: "ivan1", soundData: sonido! , photo: imagen!, url: laUrl, affiliation: StarWasAffiliation.firstOrder);
        
        if (prueba1 == prueba2){
            print("Son iguales");
        }
        else{
            print("No son iguales")
        }

        
        // Crear window
        
        // Crear un VC
        
        // Empotrarlo en un navigation
        
        // Asignar el nav como rootVC
        
        // haver cisible & key a la window
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

