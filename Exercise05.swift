// SE4041 Practical 03 - Exercise 05: Enumerations
// Student: G M H Himal | IT23152632

print("=== Exercise 05: Enums ===")

// 1. Direction Enum
enum Direction {
    case north, south, east, west
}

var direction = Direction.north
direction = .south

print("Direction: \(direction)")


// 2. Registration Status Enum
enum Status {
    case registered, pending, rejected
}

// Function to display registration status
func showRegistrationStatus(_ studentStatus: Status) {
    switch studentStatus {
    case .registered:
        print("Registration Complete")

    case .pending:
        print("Registration Pending")

    case .rejected:
        print("Registration Rejected")
    }
}

showRegistrationStatus(.registered)


// 3. Grade Enum with Raw Values
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

print("Raw grade: \(Grade.b.rawValue)")


// 4. Module Status Enum with Raw Values
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let moduleStatus = ModuleStatus.inProgress

print("Module status: \(moduleStatus.rawValue)")
