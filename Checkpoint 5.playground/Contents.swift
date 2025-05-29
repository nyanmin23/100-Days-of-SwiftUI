import UIKit

//  Your input is this:
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//  Your job is to:
//  1. Filter out any numbers that are even
//  2. Sort the array in ascending order
//  3. Map them to strings in the format “7 is a lucky number”
//  4. Print the resulting array, one item per line

//  Chain operations together 1
let result = luckyNumbers
    .filter { !$0.isMultiple(of: 2) }  // 1. Filter out any numbers that are even.
    .sorted()                          // 2. Sort the array in ascending order.
    .map { "\($0) is a lucky number" } // 3. Map them to strings in the format “7 is a lucky number”

//  Print the resulting array, one item per line.
result.forEach { print($0) }
