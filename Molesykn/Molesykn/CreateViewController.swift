//
//  CreateViewController.swift
//  Molesykn
//
//  Created by Janusz Grzesik on 21.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!

    @IBOutlet weak var contentTextField: UITextView!
    
    @IBAction func addNote(sender: AnyObject) {
        if(titleTextField.text?.characters.count > 0 ){
            addCurrentNoteToNotebooks()
            clearTextFields(titleTextField, contentTextField)
            self.view.endEditing(true)
        }
    }
    
    func addCurrentNoteToNotebooks(){
        var note.init()
        myItemList.append((itemTitle.text!, itemDescription.text!))
        print(myItemList)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func clearTextFields(labelsToClean: UITextField...){
        for labelToClean in labelsToClean{
            labelToClean.text! = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
