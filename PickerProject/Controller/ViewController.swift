//
//  ViewController.swift
//  PickerProject
//
//  Created by Didier Delhaisse on 24/01/2019.
//  Copyright © 2019 Didier Delhaisse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - Properties
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    
    var fruitArray = [String]()
    var drinkArray = [String]()
    var foodArray = [String]()
    
    // MARK: - Instances
    let fruit = Data().data_1
    let drink = Data().data_2
    let food = Data().data_3
    
    // MARK: - ViewDidLoad method
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "My order..."
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    // MARK: - Delegate and datasource methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return fruit.count
        case 1:
            return drink.count
        case 2:
            return food.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return fruit[row]
        case 1:
            return drink[row]
        case 2:
            return food[row]
        default:
            return "Error"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var result = ""
        switch component {
        case 0:
            result = Data().chosenFruit(item: fruit[row])
            fruitArray.append(result)
        case 1:
            result = Data().chosenDrink(item: drink[row])
            drinkArray.append(result)
        case 2:
            result = Data().chosenDish(item: food[row])
            foodArray.append(result)
        default:
            result = "Error"
            print(result)
        }
    }
    
    // MARK: - Action methods

    @IBAction func decodeBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.viewHeight.constant = 25
            self.view.layoutIfNeeded()
        }
        if fruitArray.isEmpty || drinkArray.isEmpty || foodArray.isEmpty {
            label.text = "No order yet! 🧐"
        } else {
            let myFruit = fruitArray.last
            let myDrink = drinkArray.last
            let myFood = foodArray.last
            let order = "Your order consists of:\n\(myFruit!) + \(myDrink!), and \(myFood!)."
            label.text = order
        }
    }
    
    @IBAction func restoreBtn(_ sender: Any) {
        fruitArray = []
        drinkArray = []
        foodArray = []
        label.text = "My order..."
        pickerView.selectRow(0, inComponent: 0, animated: true)
        pickerView.selectRow(0, inComponent: 1, animated: true)
        pickerView.selectRow(0, inComponent: 2, animated: true)
        UIView.animate(withDuration: 0.5) {
            self.viewHeight.constant = 300
            self.view.layoutIfNeeded()
        }
    }
    
}

