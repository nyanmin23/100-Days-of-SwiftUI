import UIKit

//  1. Write a function that accepts an integer from 1 through 10,000
//  2. returns the integer square root of that number. That sounds easy, but there are some catches:
//  3. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//  4. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//  5. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//  6. If you can’t find the square root, throw a “no root” error.

enum ErrorSqrt: Error {
    case outOfbounds, noRoot
}

func findSqrt(for number: Int) throws {
    if number < 1 || number > 10000 { // Corrected upper bound as per comment, though original code had 100
        throw ErrorSqrt.outOfbounds
    }
    
    var root = 1
    while root * root <= number {
        if root * root == number {
            print("Square root of \(number) is \(root).")
            return
        }
        root += 1
    }
    throw ErrorSqrt.noRoot
}

let myNum = 101 // Example, will throw noRoot for 101 with original bound, or outOfBounds if bound is strictly 100

do {
    try findSqrt(for: myNum)
    print("Found the exact integer square root.")
} catch ErrorSqrt.outOfbounds {
    print("Out of Bounds: The number must be between 1 and 10,000.") // Clarified error message
} catch ErrorSqrt.noRoot {
    print("There is no exact integer root for \(myNum).") // Clarified error message
} catch {
    print("Unexpected error occured \(error)")
}
