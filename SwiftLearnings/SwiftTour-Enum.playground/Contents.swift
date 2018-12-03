enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen
    case king = 13
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
            
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace // string case
let aceRawVal = ace.rawValue // number value
let threeCard = Rank.three // string case "three"
let threeCardRawVal = threeCard.rawValue // raw num 3

