//
//  NoteDetailViewController.swift
//  Molesykn
//
//  Created by Janusz Grzesik on 21.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    @IBOutlet weak var noteTitle: UILabel!
    @IBOutlet weak var noteImage: UIImageView!
    @IBOutlet weak var noteContent: UITextView!
    
    //Model
    var note : Note?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        noteContent.text = note?.content
        noteTitle.text = note?.title
        noteImage.image = note?.image
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
