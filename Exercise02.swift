// SE4041 Practical 03 - Exercise 02: guard
// Student: G M H Himal | IT23152632

print("=== Exercise 02: guard ===")

// Safely validate a name before using it.
func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }
    print("Registered \(name)")
}

register(nil)
register("")
register("Kamal")

// Activity 3: Check both optional student name and mark.
func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name unavailable")
        return
    }
    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }
    print("\(name) received \(mark) marks")
}

checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)
checkStudent(name: "Kamal", mark: 75)
