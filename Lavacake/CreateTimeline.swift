//
//  CreateTimeline.swift
//  Lavacake
//
//  Created by winky on 2014/12/14.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import Alamofire
import SwifteriOS

let appDelegates:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
class CreateTimeline:NSObject {
    var timeLineTextObject:[String] = []
    func getDataFromJSON(data:[JSONValue]?){
        for var i = 0; i < 10; i++ {
            var text = data?[i]["text"].string
            timeLineTextObject.append(text!)
            }
        appDelegates.timeLineTextObject = timeLineTextObject
    }
}
