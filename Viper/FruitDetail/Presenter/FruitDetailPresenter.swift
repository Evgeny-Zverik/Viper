//
//  FruitDetailPresenter.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

class FruitDetailPresenter: FruitDetailPresenterProtocol {
    var router: FruitDetailRouterProtocol?
    var view: FruitDetailViewProtocol?
    var fruit: Fruit?
    
    func viewDidLoad() {
        view?.showFruitDetail(with: fruit!)
    }
    
    func backButtonPressed(from view: UIViewController) {
        router?.goBackToFruitListView(from: view)
    }
    
    
}
