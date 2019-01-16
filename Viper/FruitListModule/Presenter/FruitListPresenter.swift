//
//  FruitListPresenter.swift
//  Viper
//
//  Created by Admin on 15/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

class FruitListPresenter: FruitListPresenterProtocol {
    var interactor: FruitListInputInteractorProtocol? //управляет о interactor
    var view: FruitListViewProtocol? //управляет о view
    var router: FruitListWireRouterProtocol? //управляет о router
    
    
    func viewDidLoad() {
        loadFruits() //presenter при загрузки вью просит массив у interactora
    }
    
    func showFruitSelection(with fruit: Fruit, from view: UIViewController) {
        router?.pushToFruitDetail(with: fruit, from: view)
    }
    
    func loadFruits() {
        interactor?.getFruitList()
    }
}

//ответ ответые данные от interactora
extension FruitListPresenter: FruitListOutputInteractorProtocol {
    func fruitListDidFetch(fruitList: [Fruit]) {
        view?.showFruits(with: fruitList)
    }
}
