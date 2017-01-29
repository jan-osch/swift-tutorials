//
//  MyTableTableViewController.swift
//  Molesykn
//
//  Created by Janusz Grzesik on 21.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

var notebooks: [Notebook]{
    return Notebook.notebooks()
}

class MyTableTableViewController: UITableViewController {
    
    // MARK: - Data source
    
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let notebook = notebooks[section]
        return notebook.name
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return notebooks.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let notebook = notebooks[section]
        return notebook.notes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NoteCell", forIndexPath: indexPath) as! MyTableViewCell

        cell.note = getNoteByIndexPath(indexPath)
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
                case "showDetail":
                    let noteDetailViewController = segue.destinationViewController as! NoteDetailViewController
                    if let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell){
                        noteDetailViewController.note =  getNoteByIndexPath(indexPath)
                    }
                
                default: break
            }
        }
    }
    
    func getNoteByIndexPath(indexPath: NSIndexPath) -> Note{
        return notebooks[indexPath.section].notes[indexPath.row]
    }
}
