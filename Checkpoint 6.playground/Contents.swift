import UIKit

//  1. Create a struct to store information about a car, including its model, number of seats, and current gear
//  2. Add a method to change gears up or down.
//  3. Have a think about variables and access control:
//      - what data should be a variable rather than a constant?
//      - what data should be exposed publicly?
//      - Should the gear-changing method validate its input somehow?

struct Car {
    let model: String
    let seat: Int
    private(set) var currentGear: Int
    
    init(model: String = "Tesla Cybertruck", seat: Int = 5, currentGear: Int = 1) {
        self.model = model
        self.seat = seat
        // Ensure currentGear is within a valid range (e.g., 1-10, 1 being neutral) during initialization
        self.currentGear = min(max(currentGear, 1), 10) // Assuming 1 is the lowest gear, 10 is highest
    }
    
    mutating func shiftGear(to targetGear: Int) {
        // Validate gear range (e.g., 1 for Neutral, 2-10 for driving gears)
        // Note: Your original code printed "Engine is in neutral state" for targetGear == 1
        // but didn't actually set currentGear to 1 in that specific print case.
        // And also the validation said "between 0 and 10" but then handled 1 separately.
        // I've adjusted for clarity assuming gears 1 (Neutral) through 10.
        if targetGear == 1 {
            currentGear = targetGear
            print("Engine is in neutral state (Gear \(currentGear)).")
        } else if (2...10).contains(targetGear) {
            currentGear = targetGear
            print("Gear is shifted to \(currentGear).")
        } else {
            print("Invalid gear. Gear must be between 1 (Neutral) and 10.")
        }
    }
}

var newCar = Car()
print(newCar.model)
print(newCar.seat)
print(newCar.currentGear)

newCar.shiftGear(to: 12)
newCar.shiftGear(to: 1)
newCar.shiftGear(to: 5)
newCar.shiftGear(to: -3)
