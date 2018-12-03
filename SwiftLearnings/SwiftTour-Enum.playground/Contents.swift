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
/// Return the higher card based on Rank rawValue
func whichIsHiCard(card1: Rank, card2: Rank) -> Rank {
    if card1.rawValue > card2.rawValue {
        return card1
    }
    return card2
}

let ace = Rank.ace // string case
let aceRawVal = ace.rawValue // number value
let threeCard = Rank.three // string case "three"
let threeCardRawVal = threeCard.rawValue // raw num 3
let theHiThree = whichIsHiCard(card1: ace, card2: threeCard)

// returns nil if invalid rank based off rawValue initialiser
if let randomNineteenCard = Rank(rawValue: 19) {
    print(randomNineteenCard, "NINETEEN. NINETEEN? NIIINETEEEEN!")
} else {
    print("Invalid rawValue no enum case matched")
}

enum Suit {
    case diamonds, clubs, hearts, spades
    
    func colour() -> String {
        switch self {
        case .diamonds, .hearts:
            return "red"
        case .clubs, .spades:
            return "black"
        }
    }
    func simpleDescription() -> String {
        switch self {
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        case .hearts:
            return "hearts"
        case .spades:
            return "spades"
        }
    }
}

let hearts = Suit.hearts
let heartsDesc = hearts.simpleDescription()

Suit.spades.simpleDescription()
Suit.spades

