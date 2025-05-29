import UIKit

//  -Your goal is to loop from 1 through 100, and for each number:
//  -If it’s a multiple of 3, print “Fizz”
//  -If it’s a multiple of 5, print “Buzz”
//  -If it’s a multiple of 3 and 5, print “FizzBuzz”
//  -Otherwise, just print the number

//  With if statements
//  for number in 1...100 {
//      if number % 3 == 0 && number % 5 == 0 {
//          print("FizzBuzz")
//      } else if number % 3 == 0 {
//          print("Fizz")
//      } else if number % 5 == 0 {
//          print("Buzz")
//      } else {
//          print(number)
//      }
//}

//  With ternary operator
for number in 1...100 {
    print((number.isMultiple(of: 3), number.isMultiple(of: 5)) == (true, true) ?
          "FizzBuzz" : (number.isMultiple(of: 3)) ?
          "Fizz" : (number.isMultiple(of: 5)) ?
          "Buzz" : "\(number)")
}
