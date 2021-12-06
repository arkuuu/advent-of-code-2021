import Foundation

//var fishes: [Int] = [3, 4, 3, 1, 2]
var fishes: [Int] = [1,4,3,3,1,3,1,1,1,2,1,1,1,4,4,1,5,5,3,1,3,5,2,1,5,2,4,1,4,5,4,1,5,1,5,5,1,1,1,4,1,5,1,1,1,1,1,4,1,2,5,1,4,1,2,1,1,5,1,1,1,1,4,1,5,1,1,2,1,4,5,1,2,1,2,2,1,1,1,1,1,5,5,3,1,1,1,1,1,4,2,4,1,2,1,4,2,3,1,4,5,3,3,2,1,1,5,4,1,1,1,2,1,1,5,4,5,1,3,1,1,1,1,1,1,2,1,3,1,2,1,1,1,1,1,1,1,2,1,1,1,1,2,1,1,1,1,1,1,4,5,1,3,1,4,4,2,3,4,1,1,1,5,1,1,1,4,1,5,4,3,1,5,1,1,1,1,1,5,4,1,1,1,4,3,1,3,3,1,3,2,1,1,3,1,1,4,5,1,1,1,1,1,3,1,4,1,3,1,5,4,5,1,1,5,1,1,4,1,1,1,3,1,1,4,2,3,1,1,1,1,2,4,1,1,1,1,1,2,3,1,5,5,1,4,1,1,1,1,3,3,1,4,1,2,1,3,1,1,1,3,2,2,1,5,1,1,3,2,1,1,5,1,1,1,1,1,1,1,1,1,1,2,5,1,1,1,1,3,1,1,1,1,1,1,1,1,5,5,1]
let numberOfDays = 256

print(fishes)

var fishesByDaysTillBreeding: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]

for fishAge in fishes {
  fishesByDaysTillBreeding[fishAge] += 1
}

print(fishesByDaysTillBreeding)

for day in 1...numberOfDays {
  var newFishes: [Int] = []

  for i in 1...8 {
    newFishes.append(fishesByDaysTillBreeding[i])
  }

  let numberOfBreedings = fishesByDaysTillBreeding[0]
  newFishes[6] += numberOfBreedings
  newFishes.append(numberOfBreedings)

  //print("After \(day) days:", newFishes)
  fishesByDaysTillBreeding = newFishes
}

print("Number of fishes after \(numberOfDays) days: \(fishesByDaysTillBreeding.reduce(0, +))")
