//
//  Fruit.swift
//  Viper
//
//  Created by Admin on 15/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import Foundation

struct Fruit {
    var name: String!
    var vitamin: String!
    
    init(attributes: [String: String]) {
        self.name = attributes["name"]
        self.vitamin = attributes["vitamin"]
    }
}
