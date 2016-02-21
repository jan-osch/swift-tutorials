//
//  FirstViewController.swift
//  ToDo
//
//  Created by Janusz Grzesik on 20.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var myTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myItemList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let dequeued: AnyObject = tableView.dequeueReusableCellWithIdentifier("MyCustomViewCell", forIndexPath: indexPath)
//        let myCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        let myCell = dequeued as! MyTableViewCell
        
        myCell.myCustomTitle?.text = myItemList[indexPath.row].0
        myCell.myCustomDescription?.text = myItemList[indexPath.row].1
        return myCell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            myItemList.removeAtIndex(indexPath.row)
            myTableView.reloadData()
        }
    }
    override func viewDidAppear(animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

