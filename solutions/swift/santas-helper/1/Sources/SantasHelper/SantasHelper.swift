func getName(_ item: (name: String, amount: Int)) -> String {
  // fatalError("Please implement the getName(_:) function")
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  // fatalError("Please implement the createToy(name:amount:) function")
  return (name:name, amount:amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  // fatalError("Please implement the updateQuantity(_:toy:amount) function")
  var results = items
  for idx in 0..<results.count {
    let itemName = getName(results[idx])
    if itemName == toy {
      results[idx].amount = amount
    }
  }
  return results
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  // fatalError("Please implement the addCategory(_:category:) function")
  var results: [(name: String, amount: Int, category: String)] = []
  for idx in 0..<items.count {
    var item = (name:items[idx].name, amount:items[idx].amount, category: category)
    results.append(item)
  }
  return results
}
