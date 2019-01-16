//
//  FruitDetailWireFrame.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

//Router Fruit Detail List
class FruitDetailRouter: FruitDetailRouterProtocol {
    func goBackToFruitListView(from view: UIViewController) {
        view.dismiss(animated: true)
    }
    
    class func createFruitDetailModule(with fruitDetailRef: FruitDetailViewController, and fruit: Fruit) {
        let presenter = FruitDetailPresenter()
        presenter.fruit = fruit
        fruitDetailRef.presenter = presenter
        fruitDetailRef.presenter?.view = fruitDetailRef
        fruitDetailRef.presenter?.router = FruitDetailRouter()
    }

}
