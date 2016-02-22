//
//  Note.swift
//  Molesykn
//
//  Created by Janusz Grzesik on 21.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import Foundation
import UIKit

public enum NoteMood{
    case Sad
    case Happy
    case Brilliant
    case Furious
    case Anxious
    case Neutral
}

class Note {
    var title : String
    var content : String
    var image : UIImage
    var noteMood : NoteMood
    
    init(titled: String, content: String, imageName: String){
        self.title = titled
        self.content = content
        if let img = UIImage(named: imageName){
            self.image = img
        }else{
            self.image = UIImage(named: "default")!
        }
        self.noteMood = .Neutral
    }
}