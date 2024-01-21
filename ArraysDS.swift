//
//  ArraysDS.swift
//  dsalgo
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation

let songs: [Any] = ["Army of thieves", "Who moved my cheese", 3];
var names = [String]();
var nums = [Int]();

// Adds a new element in the array
func addNewElement() {
     names.append("Alex Maina");
}

// Remove the last element of an array ["a","b"] -> ["a"]
func removeLast() {
    names.remove(at: names.count - 1);
}
// Remove at a certain index
func removeAtIndex(index: Int) {
    names.remove(at: index);
}

// Add at a certain index
func addToindex(index: Int, element: String) {
    names.insert(element, at: index)
}
// Pop the last element
func removeLastEl() -> String {
    return names.removeLast()
}

// Filter an element from an array
func filterItems(item: String) -> [String] {
   return names.filter {
        (name) -> Bool in name != item;
    }
}

// Get the first element satisfying a condition
func getElementSatisfying() -> String {
    return names.first(where: {$0.count > 2} )!;
}

// Get the last element satisfying condition x
func getElementLast() -> String {
    return names.last(where: {$0 == "Mike"})!
}

// Looping over an array
func loopOver() {
    names.map({
        print($0)
    })
}

// Reduce an array
func reduce() {
    nums.reduce(0) {
        (acc, num) in return acc + num;
    }
}

