// SE4041 Practical 03 - Exercise 01: Functions
// Student: G M H Himal | IT23152632

print("=== Exercise 01: Functions ===")

// Step 1: Simple function
func greet() {
    print("Welcome to SE4041")
}
greet()

// Step 2: Function parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}
greetStudent(name: "G M H Himal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Step 3: Return a value
func grade(for mark: Int) -> String {
    return mark >= 50 ? "Pass" : "Fail"
}
print("Grade for 68: \(grade(for: 68))")

// Activity 1: Return the average of three Double values
func calculateAverage(_ first: Double, _ second: Double, _ third: Double) -> Double {
    return (first + second + third) / 3.0
}
let average = calculateAverage(75, 82, 68)
print("Activity 1 - Average: \(average)")

// Step 4: Argument labels
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}
travel(from: "Malabe", to: "Kandy")

// Step 5: Omit argument label using _
func double(_ number: Int) -> Int {
    return number * 2
}
print("Double 10: \(double(10))")

// Step 6: Default parameter
func result(_ mark: Int, passMark: Int = 50) -> String {
    return mark >= passMark ? "Pass" : "Fail"
}
print("Default pass mark: \(result(68))")
print("Custom pass mark: \(result(68, passMark: 75))")

// Activity 2
func finalResult(mark: Int, passMark: Int = 50) -> String {
    return mark >= passMark ? "Pass" : "Fail"
}
print("Activity 2 - 45: \(finalResult(mark: 45))")
print("Activity 2 - 75: \(finalResult(mark: 75))")
print("Activity 2 - 75 with 80 pass mark: \(finalResult(mark: 75, passMark: 80))")
