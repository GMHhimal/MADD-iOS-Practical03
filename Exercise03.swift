// SE4041 Practical 03 - Exercise 03: Tuples
// Student: G M H Himal | IT23152632

print("=== Exercise 03: Tuples ===")

// Return three related results together in one tuple.
func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    precondition(!marks.isEmpty, "A non-empty marks array is required")
    let total = marks.reduce(0, +)
    return (marks.min()!, marks.max()!, Double(total) / Double(marks.count))
}

let result = summary(of: [72, 65, 48, 90])
print("Minimum: \(result.minimum)")
print("Maximum: \(result.maximum)")
print("Average: \(result.average)")

// Tuple unpacking
let (low, high, avg) = summary(of: [72, 65, 48, 90])
print("Unpacked: minimum \(low), maximum \(high), average \(avg)")

// Activity 4: Return total and average using a tuple.
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    guard !marks.isEmpty else {
        return (total: 0, average: 0.0)
    }
    return (total: total, average: Double(total) / Double(marks.count))
}

let analyzed = analyzeMarks([60, 70, 80, 90])
print("Total: \(analyzed.total)")
print("Average: \(analyzed.average)")
