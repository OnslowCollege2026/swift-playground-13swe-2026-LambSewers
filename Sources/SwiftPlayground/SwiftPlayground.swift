// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let mixed = ["cat", "7", "owl", "15", "dog", "3"]

        let probablyNumbers = mixed.compactMap {Int($0)}
        let ifNumbersAreNumbers = mixed.allSatisfy{Int($0) != nil}

        print(probablyNumbers)
        print("Does mixed contain only numbers \(ifNumbersAreNumbers)")




        let sightings = [
        (name: "moth", score: 3),
        (name: "wolf", score: 9),
        (name: "raven", score: 4),
        (name: "mist", score: 7),
        (name: "wisp", score: 2)
        ]

        // Looks at the first letter of the first item of the list and checks if it is M or W
        let filteredSightings = sightings.filter {$0.0.first == "m" || $0.0.first == "w"} 




        // let sightingScores = filteredSightings.compactMap {Int($0.0)}
        // Makes a new array that only contains the what is after score: 
        let sightingScores = filteredSightings.map {$0.score}

        let totalSightingScores = sightingScores.reduce(0,+)

        let minScore = sightingScores.min {$0 < $1}

        let maxScore = sightingScores.max {$0 < $1}


        print("Filtered sightings \(filteredSightings)")
        print(sightingScores)
        print(totalSightingScores)
        print("Min sighting score: \(minScore!)")
        print("Max sighting score: \(maxScore!)")









        let archive = [
            [
                [["candle", "dust"], ["mirror", "ash"]],
                [["whisper", "shadow"], ["clock", "veil"]]
            ],
            [
                [["stone", "key"], ["relic", "name"]],
                [["cipher", "bone"], ["ember", "seal"]]
            ]
        ]


        // let firstLastLastLastItem = archive.last?.last?.last?.first




       // print("The first item of the last item of the last item of the last item of the archive is: \(firstLastLastLastItem)")

    }
}




