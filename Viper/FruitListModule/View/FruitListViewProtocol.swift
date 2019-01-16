//
//  FruitListViewProtocol.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import Foundation

protocol FruitListViewProtocol {
    // PRESENTER -> VIEW
    func showFruits(with fruits: [Fruit])
}
