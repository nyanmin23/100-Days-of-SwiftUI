import UIKit

//  1. Write a function that accepts an optional array of integers, and returns one randomly.
//  2. If the array is missing or empty, return a random number in the range 1 through 100.
//  3. Write your function in a single line of code.(Not removing the line breaks)

//  First Attempt
//  func arrayCheck(item: [Int]?) -> Int { return item?.isEmpty == false ? (item?.randomElement() ?? 0) : Int.random(in: 1...100) }

//  After Several Attempts
func arrayCheck(item: [Int]?) -> Int { item?.randomElement() ?? Int.random(in: 1...100) }

