// SE4041 Practical 03 - Final Challenge: Student Management System
// Student: G M H Himal | IT23152632

print("=== SE4041 Practical 03: Student Management System ===")

// Part A: Nine possible grade values.
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// Part B: Student model with three stored properties.
struct Student {
    let studentID: String
    let name: String
    let mark: Int

    // Part C: Computed grade based on the lab's exact thresholds.
    var grade: Grade {
        switch mark {
        case 80...100: return .a
        case 75..<80: return .aMinus
        case 70..<75: return .bPlus
        case 65..<70: return .b
        case 60..<65: return .bMinus
        case 55..<60: return .cPlus
        case 45..<55: return .c
        case 40..<45: return .cMinus
        default: return .f
        }
    }

    // Part D: Display a student's details.
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("--------------------")
    }
}

// Part E: Five students; the first is the student who owns the repository.
let students = [
    Student(studentID: "IT23152632", name: "G M H Himal", mark: 72),
    Student(studentID: "IT00002", name: "Nimali", mark: 45),
    Student(studentID: "IT00003", name: "Ruwan", mark: 68),
    Student(studentID: "IT00004", name: "Sanduni", mark: 90),
    Student(studentID: "IT00005", name: "Kasun", mark: 38)
]

// Part F: Display every student using a loop.
print("\nAll students:")
for student in students {
    student.displayDetails()
}

// Part G: Only students with marks >= 50 (independent of grade labels).
let passedStudents = students.filter { $0.mark >= 50 }
print("Passed student names (marks >= 50):")
for student in passedStudents {
    print(student.name)
}

// Part H: Extract all student names using map.
let studentNames = students.map { $0.name }
print("\nAll student names: \(studentNames)")

// Part I: Calculate total and average using reduce.
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = students.isEmpty ? 0.0 : Double(totalMarks) / Double(students.count)
print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")
