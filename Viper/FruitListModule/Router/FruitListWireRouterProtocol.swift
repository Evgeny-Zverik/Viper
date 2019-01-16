//
//  FruitListWireFrameProtocol.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

protocol FruitListWireRouterProtocol {
    // PRESENTER -> ROUTER
    func pushToFruitDetail(with fruit: Fruit, from view: UIViewController)
    static func createFruitListModule(fruitListRef: FruitListViewController)
}
