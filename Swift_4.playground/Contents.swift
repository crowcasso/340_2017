/*:
 ## Swift #4 (Enumerations)
 Enumerations allow you to create instances that are one of a predefined list of cases.
 - - -
 */
/*:
 - Callout(Hands-On #4.0):
 Create an enumeration (enum) of possible discrete directions.
 */
enum CompassDirection {
    case North
    case South
    case East
    case West
}


/*:
 - Callout(Hands-On #4.1):
 Create an instance of CompassDirection and give it a default value.
 */
var direction = CompassDirection.North
var direction2: CompassDirection = .North
direction = .South


/*:
 - Callout(Hands-On #4.2):
 Use switch statements with enums.
 */
print("headed ", terminator: "")
switch direction {
case .North:
    print("north")
case .South:
    print("south")
case .East:
    print("east")
case .West:
    print("west")
}


/*:
 - Callout(Hands-On #4.3):
 Swift enums do no have an underlying integer type. You can choose to get this behavior by using a raw value.
 */
enum CompassDirection2: Int {
    case North, South, East, West
}

var direction3 = CompassDirection2.East
print(direction3)
print(direction3.rawValue)
print(CompassDirection2.West.rawValue)


/*:
 - Callout(Hands-On #4.4):
 You can supply your own values to enums.
 */
enum CompassDirection3: Int {
    case North = 10, South = 20, East = 30, West = 40
}

print(CompassDirection3.East.rawValue)


/*:
 - Callout(Hands-On #4.5):
 You can work from a raw value back to the enumerated type.
 */
let myRawValue = 20

if let myDirection = CompassDirection3(rawValue: myRawValue) {
    print("success: \(myRawValue) into \(myDirection)")
} else {
    print("failure")
}


/*:
 - Callout(Hands-On #4.6):
 Swift allows a variety of types to be used as raw values.
 */
enum ProgrammingLanguage: String {
    case Swift      = "Swift"
    case ObjectiveC = "Objective-C"
    case C          = "C"
    case Cpp        = "C++"
    case Java       = "Java"
}

let myLanguage = ProgrammingLanguage.Swift
print("my language is \(myLanguage.rawValue)")


/*:
 - Callout(Hands-On #4.6):
 Swift will use the name of the case itself if you omit the raw value.
 */
enum ProgrammingLanguage2: String {
    case Swift
    case ObjectiveC = "Objective-C"
    case C
    case Cpp        = "C++"
    case Java
}
let myLanguage2 = ProgrammingLanguage2.Java
print("my second language is \(myLanguage2)")


/*:
 - Callout(Hands-On #4.7):
 In Swift, metods can be associated with enums.
 
 1. Let's add a method to returm surface temperature.
 2. Let's add a toggle method to our LightBulb.
 */
enum LightBulb {
    case On
    case Off
    
    func surfaceTemperature(forAmbient ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0

        case .Off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }

}

var bulb = LightBulb.On
let ambientTemperature = 77.0

bulb.toggle()
var bulbTemperature = bulb.surfaceTemperature(forAmbient: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

/*:
 - Callout(Hands-On #4.8):
 Swift also allows cases with associated values.
 */
enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
            
        case let .Square(side):
            return side * side
            
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectangleShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectangleShape.area())")
print("point's area = \(pointShape.area())")