//
//  Data.swift
//  PickerProject
//
//  Created by Didier Delhaisse on 24/01/2019.
//  Copyright © 2019 Didier Delhaisse. All rights reserved.
//

import Foundation

struct Data {
    let data_1 = ["apple", "banana", "lemon"]
    let data_2 = ["juice", "soda", "wine", "water", "coffee"]
    let data_3 = ["salad", "pizza", "pennoni", "beef", "chicken", "fish"]
    
    func chosenFruit(item: String) -> String {
        for x in data_1 {
            if x == item {
                return item
            }
        }
        return "Error"
    }
    
    func chosenDrink(item: String) -> String {
        for x in data_2 {
            if x == item {
                return item
            }
        }
        return "Error"
    }
    
    func chosenDish(item: String) -> String {
        for x in data_3 {
            if x == item {
                return item
            }
        }
        return "Error"
    }
}
