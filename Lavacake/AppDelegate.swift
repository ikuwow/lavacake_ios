//
//  AppDelegate.swift
//  Lavacake
//
//  Created by 出川幾夫 on 12/13/14.
//  Copyright (c) 2014 Lavacake. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var showName:String?
    
    var timeLineTextObject:[String] = []
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        sleep(1)
        
        FBLoginView.self
        FBProfilePictureView.self
        
        return true
    }

    func application(application: UIApplication, openURL url: NSURL, sourceApplication: NSString?, annotation: AnyObject) -> Bool {
        
        println(url)
        
        let ud = NSUserDefaults.standardUserDefaults()
        let cells = split(url.URLString, { $0 == "&" })
        //println(cells)
        
        for s in cells {
            //println( s )
            
            let cells2 = split(s.URLString, { $0 == "=" })
            //println(cells2)
            for s2 in cells2 {
                if s2 == "access_token" {
                    println(cells2[1])
                    ud.setObject(cells2[1], forKey: "access_token")
                }
            }
        }
        
        var wasHandled:Bool = FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication)
        return wasHandled
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

