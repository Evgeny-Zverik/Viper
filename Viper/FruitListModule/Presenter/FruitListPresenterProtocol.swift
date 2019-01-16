//
//  FruitListPresenterProtocol.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

protocol FruitListPresenterProtocol {
    //VIEW -> PRESENTER
    var interactor: FruitListInputInteractorProtocol? {get set}
    var view: FruitListViewProtocol? {get set}
    var router: FruitListWireRouterProtocol? {get set}
    
    func viewDidLoad()
    func showFruitSelection(with fruit: Fruit, from view: UIViewController)
}
