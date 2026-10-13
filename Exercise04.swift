// SE4041 Practical 03 - Exercise 04: Closures, map, filter, reduce
// Student: G M H Himal | IT23152632

print("=== Exercise 04: Closures ===")

let marks = [72, 45, 65, 48, 90]
let passed = marks.filter { $0 >= 50 }
let increasedMarks = marks.map { $0 + 5 }
let total = marks.reduce(0) { $0 + $1 }

print("Passed marks: \(passed)")
print("Marks increased by 5: \(increasedMarks)")
print("Total marks: \(total)")

// Activity 5: No for loop required.
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]
let expensivePrices = prices.filter { $0 > 100.0 }
let raisedPrices = prices.map { $0 + 10.0 }
let totalPrice = prices.reduce(0.0) { $0 + $1 }

print("Prices above 100: \(expensivePrices)")
print("Prices increased by 10: \(raisedPrices)")
print("Total price: \(totalPrice)")
