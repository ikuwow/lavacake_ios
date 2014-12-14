//
//  SearchAccountViewController.swift
//  Lavacake
//
//  Created by 出川幾夫 on 12/14/14.
//  Copyright (c) 2014 Lavacake. All rights reserved.
//

import UIKit
import SwifteriOS

class SearchAccountViewController: UIViewController, UISearchBarDelegate {
    
    var searchSNS: String = ""

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var naviTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        naviTitle.title = searchSNS+" Search"
        searchBar.showsCancelButton = true
        searchBar.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        println(searchBar.text)
        
        switch searchSNS {
        case "Twitter":
        
            let searchQuery = searchBar.text
            let swifter = Swifter(consumerKey: "F5bTTXyAbLCxbAWY4nVoqb3yy", consumerSecret: "rZDlgpC8qaV6RerZ2nHCpN17p0q8P3pqk6TMoYwU8WJI56pQRL")
            let failureHandler: ((NSError) -> Void) = {
                error in
                NSLog("test twitter api failure")
                println(error.domain)
            }
            
            swifter.getUsersSearchWithQuery(searchQuery, page: 1, count: 20, includeEntities: true,
                success: {(statuses: [JSONValue]?) in
                    println(statuses)
                },
                failure: failureHandler)
            
        case "Facebook":
        println("Facebook is still under construction")
        default:
        break
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
