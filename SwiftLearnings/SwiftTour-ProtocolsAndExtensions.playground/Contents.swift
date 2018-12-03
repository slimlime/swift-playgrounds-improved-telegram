
protocol ExampleProtocol {
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
