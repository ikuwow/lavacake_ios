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

class StartViewController: UIViewController, FBLoginViewDelegate {
    
    @IBOutlet var fbLoginView : FBLoginView!
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var nameBox: UITextField!
    @IBOutlet var passWordBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.addTarget(self, action: "login:", forControlEvents: .TouchUpInside)
        
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
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
        var snsCliant = SNSApiController()
        let ud = NSUserDefaults.standardUserDefaults()
        var udToken : String = ud.objectForKey("access_token") as String
        
        println(udToken)
        
        snsCliant.updatePersonInfo(userName, fbToken: udToken)

        snsCliant.updateTwitterInfo("388740924")//いくおのツイッターID
    }
    
    // Facebook Delegate Methods
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
        println("This is where you perform a segue.")
        
        //performSegueWithIdentifier("toMylistViewController",sender: nil)
        
        
        //let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //let nexViewController = storyBoard.instantiateViewControllerWithIdentifier("Navigation") as UINavigationController
        //self.presentViewController(nexViewController, animated:true, completion:nil)
        
        
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
        println("User Name: \(user.name)")
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }
    

}

