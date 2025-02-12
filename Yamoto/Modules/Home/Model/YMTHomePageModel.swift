//
//  HomePageModel.swift
//  Yamoto
//
//  Created by pactera on 2020/10/23.
//  Copyright © 2020 pactera. All rights reserved.
//

import UIKit
import ObjectMapper
import RxMoya
import RxDataSources

struct YMTHomePage: Mappable{
    
    var result : [HomePage]?
    
    var  array1: [Items]?
    var  array2: [Items]?
    
    init?(map: Map) { }
    
   mutating func mapping(map: Map) {
        result <- map["result"]
        array1 <- map["array1"]
        array2 <- map["array2"]

    }
}
    

struct HomePage: Mappable {
    
    var title : String?
    var  array2: [Items]?
    var  array1: [Items1]?

    init?(map: Map) { }
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        array2 <- map["array2"]
        array1 <- map["array1"]

    }
}
    
struct Items: Mappable {
    
    var imageUrl: Array<String>?
    var title:String?
    var content: String?
    var date: String?
    var imageName : String?
    
    
    var good_id: Int = 0
   var good_name: String?
   var good_info: String?
   var good_url: String?
   var good_price: String?


    init?(map: Map) { }
    mutating func mapping(map: Map) {
        imageUrl <- map["imageUrl"]
        imageName <- map["imageName"]
        title <- map["title"]
        content <- map["content"]
        date <- map["name"]
        good_id <- map["good_id"]
         good_name <- map["good_name"]
         good_info <- map["good_info"]
         good_url <- map["good_url"]
         good_price <- map["good_price"]
    }
}


struct Items1: Mappable {
    
   var url_big: String?
   var url_small: String?

    init?(map: Map) { }
    mutating func mapping(map: Map) {
         url_big <- map["url_big"]
         url_small <- map["url_small"]
    }
}



extension HomePage : SectionModelType {
    
    typealias Item = Items
    typealias Identity = String

    var identity: String {
        return title!
    }

    var items: [Items] {
        return self.array2!
    }

    init(original: HomePage, items: [Item]) {
        self = original
        self.array2 = items
    }
}
