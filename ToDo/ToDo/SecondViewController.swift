//
//  SecondViewController.swift
//  ToDo
//
//  Created by Janusz Grzesik on 20.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

var myItemList = [(String, String)]()

class SecondViewController: UIViewController {

    @IBOutlet var itemTitle: UITextField!

    @IBOutlet var itemDescription: UITextField!

    
    @IBAction func addItem(sender: AnyObject) {
        if(itemTitle.text?.characters.count > 0 ){
            addCurrentItemToList()
            clearTextFields(itemTitle, itemDescription)
            self.view.endEditing(true)
        }
    }
    func clearTextFields(labelsToClean: UITextField...){
        for labelToClean in labelsToClean{
            labelToClean.text! = ""
        }
    }
    
    func addCurrentItemToList(){
        myItemList.append((itemTitle.text!, itemDescription.text!))
        print(myItemList)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

