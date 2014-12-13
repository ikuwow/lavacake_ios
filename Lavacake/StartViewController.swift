//
//  StartViewController.swift
//  Lavacake
//
//  Created by winky on 2014/12/13.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import UIKit
import Accounts
import Social
import Twitter

class StartViewController: UIViewController {
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var nameBox: UITextField!
    @IBOutlet var passWordBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.addTarget(self, action: "login:", forControlEvents: .TouchUpInside)
    }
    
    override func viewWillAppear(animated: Bool) {

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: UIButton){
        let userName = nameBox.text
        var test = SNSApiController()
        test.updateTwitterInfo(userName)
    }

}

