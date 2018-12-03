
protocol ExampleProtocol {
    // computed `get` for types that can't have stored properties?// ~. mandatory get or get set for protocols
    var simpleDescription: String { get }
    // mutating func required for methods that modify Struct properties... classes are fine...
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A simple class"
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.simpleDescription
a.adjust()
let aDescription = a.simpleDescription
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    // struct self normally immutable without `mutating func`
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.simpleDescription
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The int number \(self)"
    }

    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)
var inty: Int = 0
inty.adjust()

// How to create protocol for all number types?
// experiment asks for a property. but needs explicit type?
// where are union types??
//protocol AbsoluteValueProtocol {
//
//    var absoluteValue: Numeric  { get }
//
//
//}
protocol AbsDouble {
    var absoluteValue: Double { get }
}
extension Double: AbsDouble {
    var absoluteValue: Double {
        return (self < 0) ? self * -1 : self
    }
}

22.0.absoluteValue
-22.0.absoluteValue
