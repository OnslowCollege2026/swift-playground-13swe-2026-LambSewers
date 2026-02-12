// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
@main
struct SwiftPlayground {
    static func main() {
        print("\u{001B}[2J")

        let scores = [45, 78, 89, 32, 50, 92, 67, 41, 99, 56]   

        /// Takes the first number from the array and adds 5 to it
        /// Repeats this until it runs out of values
        let curveScorces = scores.map { number in
            return number + 5
        }
        print("Curve scores \(curveScorces)")


        /// Takes the first value from the aray
        /// If the the below statement returns true returns the value if false returns an empty aray
        let passingScores = scores.filter {number in 
            return number >= 50
        }
        print("Passing scores \(passingScores)")

        /// Same thing as below but more compact
        let averageScores2 = scores.reduce(0,+)

        /// Takes the first value from the aray
        /// Adds this number to the number to the starting value (0)
        /// Repeats by adding the value to the total
        let averageScores = scores.reduce(0) {result, number in 
            return result + number
        }
        print("Average scores \(averageScores) should be the same as \(averageScores2)")
    }
}

