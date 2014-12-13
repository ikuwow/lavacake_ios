//
//  TimelineViewController.swift
//  Lavacake
//
//  Created by winky on 2014/12/14.
//  Copyright (c) 2014年 Lavacake. All rights reserved.
//

import UIKit

class TiemlineViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var timeLineView: UITableView!
    let appDelegates:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    var texts:[String] = ["comment1", "comment2", "comment3", "comment4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLineView.dataSource = self
        timeLineView.delegate = self
        self.title = appDelegates.showName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(mylistTableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return texts.count
    }
    
    override func tableView(mylistTableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("timeLineCell", forIndexPath: indexPath) as UITableViewCell
        cell.imageView?.image = UIImage(named: "comment1.png")
        return cell
    }
    
    override func tableView(mylistTableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        var text: String = texts[indexPath.row]
        println(text)
    }
    
}