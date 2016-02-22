//
//  Notebook.swift
//  Molesykn
//
//  Created by Janusz Grzesik on 22.02.2016.
//  Copyright © 2016 jg. All rights reserved.
//

import Foundation


class Notebook{
    var name: String
    var notes: [Note]
    
    init(named: String, includeNotes: [Note]){
        self.name = named
        self.notes = includeNotes
    }
    
    class func notebooks() -> [Notebook]{
        return [self.ideas(), self.memories()]
    }
    
    private class func ideas() -> Notebook {
        var notes = [Note]()
        
        notes.append(Note(titled: "Cleaning Machine", content: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking.", imageName: "apple-watch.tif"))
        notes.append(Note(titled: "Space robots", content: "iPad Air 2 is the thinnest and most powerful iPad ever.", imageName: "ipad-air2.tif"))
        notes.append(Note(titled: "Flying car", content: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays.", imageName: "iphone6.tif"))
        notes.append(Note(titled: "Superb project", content: "iOS is the world’s most advanced operating system. Its easy-to-use interface, amazing features, and rock-solid stability are built into every iPhone, iPad, and iPod touch.", imageName: "iOS8.tif"))
        
        return Notebook(named: "ideas", includeNotes:notes)
    }
    
    private class func memories() -> Notebook {
        var notes = [Note]()
        
        notes.append(Note(titled: "May day", content: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking.", imageName: "apple-watch.tif"))
        notes.append(Note(titled: "Hot summer", content: "iPad Air 2 is the thinnest and most powerful iPad ever.", imageName: "ipad-air2.tif"))
        notes.append(Note(titled: "Beauty of winter", content: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays.", imageName: "iphone6.tif"))
        notes.append(Note(titled: "Chocolate", content: "iOS is the world’s most advanced operating system. Its easy-to-use interface, amazing features, and rock-solid stability are built into every iPhone, iPad, and iPod touch.", imageName: "iOS8.tif"))
        
        return Notebook(named: "memories", includeNotes: notes)
    }
}