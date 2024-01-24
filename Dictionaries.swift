//
//  Dictionaries.swift
//  dsalgo
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation

var dictionary : [String: Any] = [
    "Apple": true, "Orange": true, "Avocado": 4
]

// Getting an element from dict
func getLastElement() {
    var item = dictionary["Orange"];
    print(item as Any)
}

// Adding items to a dictionary
func addToDict() {
    dictionary["mango"] = true;
}

// Remove elements from a dict
func removeFromDict() {
    dictionary.removeValue(forKey: "mango");
}


