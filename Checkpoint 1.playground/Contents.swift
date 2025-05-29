import Foundation

//  1. Creates a constant holding any temperature in Celsius.
//  2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
//  3. Prints the result for the user, showing both the Celsius and Fahrenheit values.

let tempInCelsius: Double = 48 // Changed to 'let' to make it a constant
let tempInFahrenheit = tempInCelsius * 9/5 + 32
print("The temperature converted from \(tempInCelsius)°C to Fahrenheit is \(tempInFahrenheit)°F.")
