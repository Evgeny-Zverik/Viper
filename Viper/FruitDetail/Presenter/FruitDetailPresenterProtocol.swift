//
//  FruitDetailPresenterProtocol.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

protocol FruitDetailPresenterProtocol: class {
    var router: FruitDetailRouterProtocol? {get set}
    var view: FruitDetailViewProtocol? {get set}
    
    //View -> Presenter
    func viewDidLoad()
    func backButtonPressed(from view: UIViewController)
    
}
