//
//  FruitListInteractor.swift
//  Viper
//
//  Created by Admin on 15/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import Foundation

class FruitListInteractor: FruitListInputInteractorProtocol {
    var presenter: FruitListOutputInteractorProtocol? //Для ответа презентеру
    
    //Отдаем данные presenter
    func getFruitList() {
        presenter?.fruitListDidFetch(fruitList: getAllFruitDetail())
    }
    
    //Получаем данные из Common и заполняем массив Fruit
    func getAllFruitDetail() -> [Fruit] {
        var fruitList = [Fruit]()
        let allFruitsDetail = Common.generateDataList()
        
        for item in allFruitsDetail {
            fruitList.append(Fruit(attributes: item))
        }
        return fruitList
    }
    
    
}
