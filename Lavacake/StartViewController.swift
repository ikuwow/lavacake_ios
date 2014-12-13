//
//  StartViewController.swift
//  Lavacake
//
//  Created by winky on 2014/12/13.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var test = SNSApiController()
        //test.updatePersonInfo("ikuwow")
        test.updateTwitterInfo("")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

