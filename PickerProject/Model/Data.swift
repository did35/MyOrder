//
//  Data.swift
//  PickerProject
//
//  Created by Didier Delhaisse on 24/01/2019.
//  Copyright © 2019 Didier Delhaisse. All rights reserved.
//

import Foundation

struct Data {
    let fruits = ["apple", "banana", "lemon"]
    let drinks = ["juice", "soda", "wine", "water", "coffee"]
    let foods = ["salad", "pizza", "pennoni", "beef", "chicken", "fish"]
    
    func chosenFruit(item: String) -> String {
        for fruit in fruits {
            if fruit == item {
                return item
            }
        }
        return "Error"
    }
    
    func chosenDrink(item: String) -> String {
        for drink in drinks {
            if drink == item {
                return item
            }
        }
        return "Error"
    }
    
    func chosenDish(item: String) -> String {
        for food in foods {
            if food == item {
                return item
            }
        }
        return "Error"
    }
}
