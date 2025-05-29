import UIKit

//  1. Create an array of strings
//  2. Write some code that prints the number of items in the array and also the number of unique items in the array

var charaName = [String]()

charaName = ["Rudeus Greyrat", "Eris Boreas Greyrat", "Nanahoshi Shizuka", "Orsted", "Sylphiette", "Luke Notos Greyrat", "Ariel Anemori Asura", "Roxy Migurdia", "Norn Greyrat", "Eris Boreas Greyrat", "Eris Boreas Greyrat", "Eris Boreas Greyrat", "Sara", "Sara", "Sara", "Sara"]
print("There are \(charaName.count) characters in the list and they are \(Set(charaName)).")
