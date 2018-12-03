import UIKit

struct Person {
    var personGrid: [Int]
    subscript(personNumber: Int, personAge: Int) -> Int {
        get {
            assert(personNumber >= 1 && personAge >= 1)
            return self.personGrid[personNumber * personAge + personAge]
        }
        set (newValuePp) {
            assert(personNumber >= 1 && personAge >= 1)
            self.personGrid[personNumber * personAge + personAge] = newValuePp
        }
    }
}

let STRING_GREETING_TEMPLATE = """
Hello your name is %@, today is %@
"""

enum Greeting: CustomStringConvertible {
    case SayHello(String)
    var description: String {
        switch (self) {
        case .SayHello(let name):
            return "Hello to \(name)"
        }
    }
}
//let greeting = "Hello \(person), today is \(day)"

func greet(person: String, day: String) -> String {
    return String(format: STRING_GREETING_TEMPLATE, person, day)
}
print(greet(person: "lamuel", day: "sunthurs"))


func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}

let incrementByOne = makeIncrementer()
let onePlusOneIsTwo = incrementByOne(1)
// Cool! Functional programming partial step currying
func makeIncrementer(step: Int) -> ((Int) -> Int) {
    func addStepTo(number: Int) -> Int {
        return number + step
    }
    return addStepTo
}

let incrementByFive = makeIncrementer(step: 5)
let onePlusFiveIsSix = incrementByFive(1)
//
func goArrayDoSomeFunctionMatch(
    array: [Int],
    matcher: (Int) -> Bool
) -> Bool {
    for item in array {
        if matcher(item) == true { // don't need to explicit == true
            return true
        }
    }
    return false
}
