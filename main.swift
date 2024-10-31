import Foundation

// MARK: - Data Type Handling
print("=== Data Type Handling ===")

let integer: Int = 42
let double: Double = 3.14
let boolean: Bool = true
let string: String = "Hello, Swift!"

print("Integer: \(integer)") // Output: Integer: 42
print("Double: \(double)") // Output: Double: 3.14
print("Boolean: \(boolean)") // Output: Boolean: true
print("String: \(string)") // Output: String: Hello, Swift!

print("\n")

// MARK: - If Statements
print("=== If Statements ===")

let temperature: Int = 30

if temperature > 25 {
    print("It's a warm day!") // Output: It's a warm day!
} else if temperature < 15 {
    print("It's a cold day!")
} else {
    print("It's a pleasant day!")
}

print("\n")

// MARK: - Loops
print("=== Loops ===")

// For-In Loop (Range)
for i in 1...5 {
    print("Count: \(i)") // Output: Count: 1, Count: 2, ..., Count: 5
}

// For-In Loop (Array)
let fruits = ["Apple", "Banana", "Cherry"]
for fruit in fruits {
    print("Fruit: \(fruit)") // Output: Fruit: Apple, Fruit: Banana, Fruit: Cherry
}

// For-In Loop (Dictionary)
let stock = ["Apple": 10, "Banana": 20, "Cherry": 15]
for (fruit, quantity) in stock {
    print("\(fruit): \(quantity)") // Output: Apple: 10, Banana: 20, Cherry: 15
}

// While Loop
var count = 1
while count <= 3 {
    print("While Count: \(count)") // Output: While Count: 1, While Count: 2, While Count: 3
    count += 1
}

// Repeat-While Loop
var index = 1
repeat {
    print("Repeat Count: \(index)") // Output: Repeat Count: 1, Repeat Count: 2, Repeat Count: 3
    index += 1
} while index <= 3

print("\n")

// MARK: - Switch Statements
print("=== Switch Statements ===")

let grade: Character = "B"

switch grade {
case "A":
    print("Excellent!")
case "B":
    print("Well done!") // Output: Well done!
case "C":
    print("Good job!")
default:
    print("Keep trying!")
}

print("\n")

// MARK: - Functions
print("=== Functions ===")

func greet(name: String) -> String {
    return "Hello, \(name)!"
}

let greeting = greet(name: "Talal")
print(greeting) // Output: Hello, Talal!

// Function Types
func calculateSum(a: Int, b: Int) -> Int {
    return a + b
}

let sumFunction: (Int, Int) -> Int = calculateSum
let result = sumFunction(5, 10)
print("Sum: \(result)") // Output: Sum: 15

print("\n")

// MARK: - Classes
print("=== Classes ===")

class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func description() -> String {
        return "\(year) \(brand) \(model)"
    }
}

let myCar = Car(brand: "Tesla", model: "Model S", year: 2020)
print("Car Description: \(myCar.description())") // Output: Car Description: 2020 Tesla Model S

print("\n")

// MARK: - Asynchronous Programming
print("=== Asynchronous Programming ===")

func fetchData(completion: @escaping (String) -> Void) {
    DispatchQueue.global().async {
        // Simulate a network call with a delay
        sleep(2)
        let data = "Fetched data from server"
        completion(data)
    }
}

fetchData { data in
    print(data) // Output (after 2 seconds): Fetched data from server
}

print("\n")

// MARK: - Closures
print("=== Closures ===")

let square: (Int) -> Int = { number in
    return number * number
}

let squaredValue = square(4)
print("Squared Value: \(squaredValue)") // Output: Squared Value: 16

print("\n")

// MARK: - Enums
print("=== Enums ===")

enum Direction {
    case north, south, east, west
}

let travelDirection: Direction = .north

switch travelDirection {
case .north:
    print("Traveling North") // Output: Traveling North
case .south:
    print("Traveling South")
case .east:
    print("Traveling East")
case .west:
    print("Traveling West")
}

print("\n")

// MARK: - Structs
print("=== Structs ===")

struct Point {
    var x: Int
    var y: Int
    
    func distanceFromOrigin() -> Double {
        return sqrt(Double(x * x + y * y))
    }
}

let point = Point(x: 3, y: 4)
print("Distance from Origin: \(point.distanceFromOrigin())") // Output: Distance from Origin: 5.0

print("\n")

// MARK: - Optionals
print("=== Optionals ===")

var optionalString: String? = nil
optionalString = "I am not nil!"

if let unwrappedString = optionalString {
    print("Optional contains: \(unwrappedString)") // Output: Optional contains: I am not nil!
} else {
    print("Optional is nil")
}

print("\n")

// MARK: - Error Handling
print("=== Error Handling ===")

enum NetworkError: Error {
    case notConnected
    case timeout
}

func performNetworkRequest() throws {
    throw NetworkError.notConnected
}

do {
    try performNetworkRequest()
} catch {
    print("Error occurred: \(error)") // Output: Error occurred: notConnected
}

print("\n")