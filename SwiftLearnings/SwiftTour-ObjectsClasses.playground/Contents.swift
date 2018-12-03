
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

