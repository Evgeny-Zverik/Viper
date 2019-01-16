//
//  FruitListWireframe.swift
//  Viper
//
//  Created by Admin on 15/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

//Router Fruit List
class FruitListRouter: FruitListWireRouterProtocol {
    //Переход на Detail VC
    func pushToFruitDetail(with fruit: Fruit, from view: UIViewController) {
        let storyboard = UIStoryboard(name: "FruitDetail", bundle: nil)
        let fruitDetailViewController = storyboard.instantiateViewController(withIdentifier: "FruitDetailViewController") as! FruitDetailViewController
        FruitDetailRouter.createFruitDetailModule(with: fruitDetailViewController, and: fruit)
        view.navigationController?.pushViewController(fruitDetailViewController, animated: true)
    }
    
    //Создаем первый модуль и проставляем зависимости
    static func createFruitListModule(fruitListRef: FruitListViewController) {
        let presenter: FruitListPresenterProtocol & FruitListOutputInteractorProtocol = FruitListPresenter()
        
        fruitListRef.presenter = presenter
        fruitListRef.presenter?.router = FruitListRouter()
        fruitListRef.presenter?.view = fruitListRef
        fruitListRef.presenter?.interactor = FruitListInteractor()
        fruitListRef.presenter?.interactor?.presenter = presenter
    }
    
    
}
