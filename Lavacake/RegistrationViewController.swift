//
//  RegistrationViewController.swift
//  Lavacake
//
//  Created by 出川幾夫 on 12/14/14.
//  Copyright (c) 2014 Lavacake. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let id = segue.identifier {
            switch segue.identifier! {
                case "searchTwitter":
                    println("twitter")
                case "searchFacebook":
                    println("face")
            default:
                println("engine")
            }
        } else {
            println("null!!")
        }
    }

}