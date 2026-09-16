// TODO: define the 'ranks' constant
let ranks = 1...8
// TODO: define the 'files' constant
let files = "A"..."H"


func isValidSquare(rank: Int, file: String) -> Bool {
  return ranks.contains(rank) && files.contains(file)
}

func getRow(_ board : [String], rank: Int) -> [String] {
  let startIdx = (rank - 1) * 8
  let endIdx  = startIdx + 8
  return Array(board[startIdx..<endIdx])
}
