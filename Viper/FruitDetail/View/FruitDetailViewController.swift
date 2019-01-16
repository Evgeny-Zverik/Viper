//
//  FruitDetailViewController.swift
//  Viper
//
//  Created by Admin on 16/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

class FruitDetailViewController: UIViewController {
    
    @IBOutlet var fruitImage: UIImageView!
    @IBOutlet var fruitNameLbl: UILabel!
    @IBOutlet var vitaminLbl: UILabel!

    var presenter: FruitDetailPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension FruitDetailViewController: FruitDetailViewProtocol {
    func showFruitDetail(with fruit: Fruit) {
        title = fruit.name
        fruitImage.image = UIImage(named: fruit.name)
        fruitNameLbl.text = fruit.name
        vitaminLbl.text = fruit.vitamin
    }
}
