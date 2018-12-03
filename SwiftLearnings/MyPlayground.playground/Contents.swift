import UIKit

var str = "Hello, playground"

// Hello world! 🌍

let answer = 42
let implicitDouble = 2.0
let int: Int = 2
let double: Double = 2 + 0.0
let floaties: Float = 2 + 0.1
let backToInt: Int = Int(floaties - 0.1)

let label = "Width is"
let width = 22
let labelWidth = label + " " + String(width)

let labelWidthNice = label + " \(width) \(floaties)"
// Long string
let longText = """
Hello there
Pre
/ /
"""

print(longText)
// Immutable programming

// Arrays
let shoppingListFruits = ["apple", "orange", "lemon", "pineapple", "mango", "nectarine"]
let newFruit = "pear"
let newShoppingList: [String] = shoppingListFruits + [newFruit]

print("try switch case let")

for shopItem in newShoppingList {
    switch shopItem {
    case "orange":
        print("Hello orange")
    default:
        print("Nein nein nein nein")
    }
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?”


// Dictionary
let kvDict: [String : String] = [
    "apple": "fruit",
    "orange": "fruit"
]
print(kvDict["apple"] ?? "lolapple")



for prospectiveOrange in kvDict {
    if prospectiveOrange.key == "orange" {
        print(
            """
            This is an \(prospectiveOrange.key) hahahaha and also a \(prospectiveOrange.value)
            """)
    }
    else {
        print("Nein. Not an orange -- This is", prospectiveOrange.key,  prospectiveOrange.value)
    }
}
// Cool subscript
struct TimesTables {
    let multiplier: Int
    subscript(numberToMultiply: Int) -> Int {
        return multiplier * numberToMultiply
    }
}

final class MyFruit {
    let lol = 1
    static let LOL = 1
}

let intArray = [Int]()
let inteArray: [Int] = []
let integArray = [0, 0, 0, 0]
let integeArray = Array(repeating: 1, count: 4)
let integerArray = integArray + integeArray

//// Anon closures not equivalent to in-line functions. These do not seem to work.
//let sortFruitAsc = { (s1: String, s2: String) -> Bool in
//    return s1 < s2 // alphanumeric "aaa" < "ccc"
//}
//let sortFruitDesc = { (s1: String, s2: String) -> Bool in
//    return s1 < s2 // alphanumeric "aaa" < "ccc"
//}

print("shopping list unsorted", newShoppingList)
let shopListSortedFruits: [String] = newShoppingList.sorted(
    by: { s1, s2 in return s1 > s2 }
)
print("Shopping list sorted -> \(shopListSortedFruits)")
let emoji = "👋🌏"



