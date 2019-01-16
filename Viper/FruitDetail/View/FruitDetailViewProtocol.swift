//
//  FruitDetailViewProtocol.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import Foundation

protocol FruitDetailViewProtocol: class {
    //Presenter -> View
    func showFruitDetail(with fruit: Fruit)
}
