import UIKit

//  Make a protocol that describes a building,
//  - adding various properties and methods, then
//  - create two structs, House and Office, that conform to it.

//  Your protocol should require the following:
//  - A property storing how many rooms it has.
//  - A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//  - A property storing the name of the estate agent responsible for selling the building.
//  - A method for printing the sales summary of the building, describing what it is along with its other properties.


protocol Building {
    var numberOfRoom: Int { get set }
    var cost: Int { get set }
    var nameOftheAgent: String { get set }
    var typeOfBuilding: String { get } // Should be get-only in the protocol if set by conforming types
    
    func salesSummary()
}

extension Building {
    func salesSummary() {
        print("""

Building Type: \(typeOfBuilding)
Number of Rooms: \(numberOfRoom)
Total cost: $\(cost)
Real Esatate Agent: \(nameOftheAgent)

""")
    }
}

struct House: Building {
    var numberOfRoom: Int
    var cost: Int
    var nameOftheAgent: String
    let typeOfBuilding: String = "House" // `let` is fine as it fulfills `get` requirement
}

struct Office: Building {
    var numberOfRoom: Int
    var cost: Int
    var nameOftheAgent: String
    let typeOfBuilding: String = "Office" // `let` is fine
}

let office = Office(numberOfRoom: 20, cost: 500_000, nameOftheAgent: "Rudy")
office.salesSummary()

let house = House(numberOfRoom: 5, cost: 12_000_000, nameOftheAgent: "Orsted")
house.salesSummary()
