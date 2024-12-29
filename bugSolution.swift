func calculateAverage(numbers: [Double]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    return numbers.reduce(0, +) / Double(numbers.count)
}

let numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
let average = calculateAverage(numbers: numbers)

if let safeAverage = average {
    print(safeAverage) // Prints 3.0
} else {
    print("The array is empty")
}

let emptyNumbers: [Double] = []
let emptyAverage = calculateAverage(numbers: emptyNumbers)

if let safeAverage = emptyAverage {
    print(safeAverage) 
} else {
    print("The array is empty") // Prints "The array is empty"
}
func calculateAverageSafe(numbers: [Double]) -> Double {
    guard !numbers.isEmpty else { return 0 } // or throw an error, depending on your needs
    return numbers.reduce(0, +) / Double(numbers.count)
} 