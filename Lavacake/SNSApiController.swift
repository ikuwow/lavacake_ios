//
//  GetSNSData.swift
//  Lavacake
//
//  Created by doth on 2014/12/13.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import Alamofire

class SNSApiController: NSObject {

    /*
    * Update twitter infomation
    */
    func updateTwitterInfo(userId: String) {
        let url = "http://ec2-54-64-228-5.ap-northeast-1.compute.amazonaws.com/users/register.json"
        println(url)
        
        let params = ["userId":userId]
        println(params)
        
        // Alamofire.request(.GET, url, parameters: params)
        
        Alamofire.request(.GET, url, parameters: params)
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
    
    
}