
// Objects and Classes

class Shape {
    let numberOfSides: Int
    // static let vmShapeSide = "" // interesting
    
    init(numSides n: Int) {
        self.numberOfSides = n
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}


let triangle = Shape(numSides: 3)
let triangleSideDesc = triangle.simpleDescription()
enum RegularSidedShapes: Int {
    case circle = 1
    case triangle = 3
    case square = 4 // irregular squares rectangles rhombus blatrapezi
    case pentagon = 5
    case hexagon = 6
    case heptagon, septagon, octagon, nonagon, decagon, undecagon, dodecagonnnnn
    
    func simpleDescription() -> String {
        switch self {
        case .circle:
            return "circle"
        case .triangle:
            return "triangle"
        case .square:
            return "square"
        default:
            return String(self.rawValue) // .... raw valuekey or?
        }
    }
}
class NamedShape: Shape {
    let name: String
    
    init(numSides: Int, name: String) {
        self.name = name
        super.init(numSides: numSides)
    }
    override func simpleDescription() -> String {
        return "A \(name) with \(numberOfSides) sides"
    }
}

let square = NamedShape(numSides: 4, name: "Square")
let squareDesc = square.simpleDescription()
class Square: NamedShape {
    let sideLength: Double
    
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(numSides: 4, name: "Square")
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A \(name) with sides of length \(sideLength) and area \(area())"
    }
}
class Circle: NamedShape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
        super.init(numSides: 1, name: "Circle")
    }
    func area() -> Double {
        return Double.pi * (radius * radius) // pi * r^2
    }
    override func simpleDescription() -> String {
        return "A \(name) with radius \(radius) and area \(area())"
    }
}
let coolSquare = Square(sideLength: 3)
let coolSqDesc = coolSquare.simpleDescription()
let coolCircle = Circle(radius: 4)
let coolCiDesc = coolCircle.simpleDescription()

