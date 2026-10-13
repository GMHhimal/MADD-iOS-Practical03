// SE4041 Practical 03 - Exercise 06: Structs and Classes
// Student: G M H Himal | IT23152632

print("=== Exercise 06: Structs and Classes ===")

// Stored and computed properties, plus a method, in one Student struct.
enum Grade: String {
    case a = "A", b = "B", c = "C", f = "F"
}

struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true

    var grade: Grade {
        switch mark {
        case 75...100: return .a
        case 65..<75: return .b
        case 50..<65: return .c
        default: return .f
        }
    }

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let student = Student(name: "G M H Himal", mark: 72)
print("Student name: \(student.name)")
print("Student mark: \(student.mark)")
print("Registered: \(student.registered)")
print("Computed grade: \(student.grade.rawValue)")
student.displayDetails()

// Computed area property
struct Rectangle {
    var width: Double
    var height: Double
    var area: Double { width * height }
}
let rectangle = Rectangle(width: 4, height: 3)
print("Rectangle area: \(rectangle.area)")

// A mutating method can change a struct property.
struct Counter {
    var count = 0
    mutating func increment() {
        count += 1
    }
}
var counter = Counter()
counter.increment()
counter.increment()
print("Counter: \(counter.count)")

// Class with initializer and method.
class Lecturer {
    var name: String
    var module: String
    init(name: String, module: String) {
        self.name = name
        self.module = module
    }
    func introduce() {
        print("\(name) teaches \(module)")
    }
}
let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// Struct = value type (independent copy)
struct Point {
    var x = 0
}
var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99
print("Struct original: \(firstPoint.x)")
print("Struct copy: \(secondPoint.x)")

// Class = reference type (both variables refer to one object)
class CounterClass {
    var count = 0
}
let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99
print("Class original reference: \(firstCounter.count)")
print("Class second reference: \(secondCounter.count)")
