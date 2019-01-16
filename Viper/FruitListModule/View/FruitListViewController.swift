//
//  ViewController.swift
//  Viper
//
//  Created by Admin on 15/01/2019.
//  Copyright © 2019 Евгений Зверик. All rights reserved.
//

import UIKit

class FruitListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: FruitListPresenterProtocol!
    var fruitList = [Fruit]()

    override func viewDidLoad() {
        super.viewDidLoad()
        FruitListRouter.createFruitListModule(fruitListRef: self)
        presenter.viewDidLoad()
    }
}

extension FruitListViewController: FruitListViewProtocol {
    func showFruits(with fruits: [Fruit]) {
        fruitList = fruits
        tableView.reloadData()
    }
}

extension FruitListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath)
        let fruit = fruitList[indexPath.row]
        cell.textLabel?.text = fruit.name
        cell.detailTextLabel?.text = fruit.vitamin
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.showFruitSelection(with: fruitList[indexPath.row], from: self)
    }
}


