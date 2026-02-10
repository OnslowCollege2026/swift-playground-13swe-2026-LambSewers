// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let lunches = [6.50, 8.00, 5.75, 9.20, 7.10]
        let budget = 35.00


        /// Calculates the total cost of all of the items in the list
        ///   - Prices - A list that contains all of the prices 
        func totalCost(prices: [Double]) -> Double {
            var totalCost: Double = 0

            for price in prices {
                totalCost += price
            }
            return totalCost
        }

        func isOverBudget(total: Double, budget: Double) -> Bool {
            if total >= budget {
                return true
            }
            return false
        }

        func averageCost(prices: [Double], ) -> Double {
            let totalCost = totalCost(prices: prices)
            let numItems = prices.count
            return totalCost / Double(numItems)
        }

        for index in 0..<lunches.count {
            print("Day \(index): $\(lunches[index])")
        }

        let totalCost = (totalCost(prices: lunches))
        print("Total weekly total: $\(totalCost)")
        print("Average cost of lunch: $\(averageCost(prices: lunches))")


        if !isOverBudget(total: totalCost, budget: budget){
            print("You stayed within budget.")
        } else {
            print("Warning: You overspent this week.")
        }

    }
}


