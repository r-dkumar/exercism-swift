func getCard(at index: Int, from stack: [Int]) -> Int {
  // fatalError("Please implement the getCard(at:from:) function")
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  // fatalError("Please implement the setCard(at:from:to:) function")

  if index < 0 || index >= stack.count { return stack}
  var tempStack = stack
  tempStack[index] = newCard
  return tempStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  // fatalError("Please implement the insert(_:atTopOf:) function")
  var tempStack = stack
  tempStack.append(newCard)
  return tempStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  // fatalError("Please implement the removeCard(at:from:) function")
  if index < 0 || index >= stack.count { return stack}
  var tempStack = stack
  tempStack.remove(at:index)
  return tempStack
  
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  // fatalError("Please implement the insert(_:at:from:) function")
  if index < 0 || index > stack.count { return stack}
  var tempStack = stack
  tempStack.insert(newCard, at:index)
  return tempStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  // fatalError("Please implement the checkSizeOfStack(_:_:) function")
  return stack.count == size
}
