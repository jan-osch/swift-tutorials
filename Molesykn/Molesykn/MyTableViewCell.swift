//
//  MyTableViewCell.swift
//  Molesykn
//
//  Created by Janusz Grzesik on 23.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var noteImageView: UIImageView!
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var noteContent: UILabel!

    var note: Note? {
        didSet{
            updateUI()
        }
    }
    
    func updateUI(){
        noteTitleLabel?.text = nil
        noteContent?.attributedText = nil
        noteImageView?.image
        
        if let note = self.note{
            noteContent?.text = note.content

            noteTitleLabel?.text = note.title
            
            noteImageView.image = note.image
        }

    }
}
