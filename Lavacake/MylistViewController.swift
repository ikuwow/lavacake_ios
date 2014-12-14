//
//  MylistViewController.swift
//  Lavacake
//
//  Created by winky on 2014/12/14.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import UIKit

class MylistViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var mylistTableView: UITableView!
    let appDelegates:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    var texts:[String] = ["John Doe", "John Done", "Jane Done", "Jane Doe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mylistTableView.dataSource = self
        mylistTableView.delegate = self
        // NavigationControllerのタイトルバー(NavigationBar)の色の変更
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 228/255, green: 68/255, blue: 36/255, alpha: 1)
        // NavigationConrtollerの文字カラーの変更
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        // NavigationControllerのNavigationItemの色
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(mylistTableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return texts.count
    }
    
    override func tableView(mylistTableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.imageView?.image = UIImage(named: "content1.png")
        return cell
    }
    
    override func tableView(mylistTableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        var text: String = texts[indexPath.row]
        appDelegates.showName = texts[indexPath.row]
        println(text)
    }
    
}