func dailyRateFrom(hourlyRate: Int) -> Double {
  // fatalError("Please implement the dailyRateFrom(hourlyRate:) function")
  return Double(8 * hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  // fatalError("Please implement the monthlyRateFrom(hourlyRate:withDiscount:) function")
  let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * 22 
  let discounted = monthlyRate * (discount/100.0)
  let total = (monthlyRate - discounted).rounded()
  return total
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  // fatalError("Please implement the workdaysIn(budget:hourlyRate:withDiscount:) function")
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let discounted  = dailyRate * (discount/100.0)
  let actualRate = dailyRate - discounted
  return (budget/actualRate).rounded(.down)
}
