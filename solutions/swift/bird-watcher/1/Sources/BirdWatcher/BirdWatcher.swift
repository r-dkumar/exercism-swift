func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  // fatalError("Please implement the totalBirdCount(_:) function")
  var totalCount = 0
  for bird in birdsPerDay {
    totalCount += bird
  }
  return totalCount
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  // fatalError("Please implement the birdsInWeek(_:weekNumber:) function")
  let start = (weekNumber - 1) * 7

  // if start < 0 || start + 7 > birdsPerDay.count {return 0}
  guard start >= 0, start + 7 <= birdsPerDay.count else {return 0}

  var total = 0 
  for idx in start ..< start+7 {
    total += birdsPerDay[idx]
  }
  return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  // fatalError("Please implement the fixBirdCountLog(_:) function")
  var temp = birdsPerDay

  for idx in stride(from:0, to:birdsPerDay.count, by:2) {
    temp[idx] += 1
  }
  return temp
}
