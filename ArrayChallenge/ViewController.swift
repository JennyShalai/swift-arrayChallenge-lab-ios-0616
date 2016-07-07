//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayOfNumbers = [6, 4, 12, 4]
        let arrayOfItems = ["Bananas", "Apples", "Eggs", "Rolls"]
    
        
        shoppingList = makeShoppingList(arrayOfItems, quantityOfItems: arrayOfNumbers)
    }
    
    func makeShoppingList(itemsNeeded:[String], quantityOfItems:[Int]) -> [String] {
        var resultArray: [String] = []
        if quantityOfItems.count == itemsNeeded.count {
            for (index, item) in itemsNeeded.enumerate() {
                resultArray.append("\(index + 1). \(quantityOfItems[index]) \(item)")
            }
        }
        return resultArray
    }
    
    
}