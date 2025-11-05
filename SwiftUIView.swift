//
//  SwiftUIView.swift
//  testJson
//
//  Created by bo on 2025/11/5.
//

import SwiftUI

let person = """
{
    "name": "json",
    "age" : 18,
    "birthpath": {
        "latitude": 31,
        "longtitude": 25
    }
    “full_name_of_person”:"zhangbo"
}
"""

let person2 = """
    {
        "name" : "sdfsaf",
        "age" : 123,
        “full_name_of_person”:"zhangbo"
    }
    """

struct Person: Codable  {
    var name: String
    var age: Int
    var birthpath:Birthplace
    var fullnameofperson: String
    
    struct Birthplace:Codable{
        var latitude : Int
        var longtidue: Int
    }
    enum CodingKeys: String, CodingKey {
        case name
        case age
        case birthpath
        case fullnameofperson = "full_name_of_person"
    }
    
    
}

