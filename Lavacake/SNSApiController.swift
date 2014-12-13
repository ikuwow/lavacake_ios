//
//  GetSNSData.swift
//  Lavacake
//
//  Created by doth on 2014/12/13.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import Alamofire
import SwifteriOS

class SNSApiController: NSObject {

    /*
    * Update twitter infomation
    */
    func updatePersonInfo(userId: String) {
        let url = "http://ec2-54-64-228-5.ap-northeast-1.compute.amazonaws.com/users/register.json"
        println(url)
        
        let params = ["username":userId]
        println(params)
        
        Alamofire.request(.POST, url, parameters: params)
            .responseJSON {(request, response, JSON, error) in
                
                if error == nil {
                    println("JSON: ",  JSON)
                    //self.updateUISuccess(JSON as NSDictionary)
                } else {
                    println("Error: ", error)
                    //self.loading.text = "Internet appears down!"
                }
        }
    }

    
    /*
    * Update twitter infomation
    */
    func updateTwitterInfo(username: String){
        let swifter = Swifter(consumerKey: "F5bTTXyAbLCxbAWY4nVoqb3yy", consumerSecret: "rZDlgpC8qaV6RerZ2nHCpN17p0q8P3pqk6TMoYwU8WJI56pQRL")
        
        
        let failureHandler: ((NSError) -> Void) = {
            error in
            //self.alertWithTitle("Error", message: error.localizedDescription)
            NSLog("test twitter api failure")
        }
        
        swifter.getStatusesUserTimelineWithUserID("11263", count: 1, sinceID: nil, maxID: nil, trimUser: true, contributorDetails: false, includeEntities: true, success: {
            (statuses: [JSONValue]?) in
            
            // Successfully fetched timeline, so lets create and push the table view
            //let tweetsViewController = self.storyboard!.instantiateViewControllerWithIdentifier("TweetsViewController") as TweetsViewController
            
            if statuses != nil {
                //tweetsViewController.tweets = statuses!
                //self.presentViewController(tweetsViewController, animated: true, completion: nil)
            }
            
            NSLog("test twitter api success")
            println(statuses)
            
            }, failure: failureHandler)

    }

    
}