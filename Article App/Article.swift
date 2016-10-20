//
//  Article.swift
//  Article App
//
//  Created by Kokpheng on 10/20/16.
//  Copyright © 2016 Kokpheng. All rights reserved.
//

import UIKit

class Article {
    static var articles : [Article] = [Article]()
    var id : Int
    var title : String
    var dateTime : NSDate
    var description :String
    var photos : [UIImage]
    
    init(){
        id = 0
        title = ""
        dateTime = NSDate()
        description = ""
        photos = []
    }
    
    init(id: Int, title: String, dateTime: NSDate, description: String, photos: [UIImage]){
        self.id = id
        self.title = title
        self.dateTime = dateTime
        self.description = description
        self.photos = photos
    }
    
}
