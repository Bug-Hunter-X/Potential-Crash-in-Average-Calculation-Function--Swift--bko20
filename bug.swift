func calculateAverage(numbers: [Double]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    return numbers.reduce(0, +) / Double(numbers.count)
}

let numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
let average = calculateAverage(numbers: numbers)
print(average!) //Prints 3.0

let emptyNumbers: [Double] = []
let emptyAverage = calculateAverage(numbers: emptyNumbers)
print(emptyAverage) //Prints nil