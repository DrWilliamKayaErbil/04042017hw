//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Write a function that takes as input a piece and position and returns a list all of the possible places it can end up in one move

enum Piece {
    case knight
    case rook
}

// typealias Location = (x: Int, y: Int)
struct Location: CustomStringConvertible, Hashable {
    var x: Int
    var y: Int
    
    var description: String {
        
        return ("(x: \(x), y: \(y))")
    }
    
    var hashValue: Int {
        return x.hashValue &+ y.hashValue
    }
    
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

func possibleKnightPositions(pieceLocation: Location) -> Set<Location> {
    var moves: Set<Location> = [Location(x: pieceLocation.x + 1, y: pieceLocation.y + 2),
                                Location(x: pieceLocation.x + 1, y: pieceLocation.y - 2),
                                Location(x: pieceLocation.x - 1, y: pieceLocation.y + 2),
                                Location(x: pieceLocation.x - 1, y: pieceLocation.y - 2),
                                Location(x: pieceLocation.x + 2, y: pieceLocation.y + 1),
                                Location(x: pieceLocation.x + 2, y: pieceLocation.y - 1),
                                Location(x: pieceLocation.x - 2, y: pieceLocation.y + 1),
                                Location(x: pieceLocation.x - 2, y: pieceLocation.y - 1)]
    for move in moves {
        if move.x < 0 || move.x > 7 || move.y < 0 || move.y > 7 {
            moves.remove(move)
        }
    }
    return moves
}
let currentlocation = (x: 0, y: 0)
print(possibleKnightPositions(pieceLocation: Location(x: 0, y: 0)))

func possibleRookPositions(pieceLocation: Location) -> Set<Location> {
    var moves: Set<Location> = [Location(x: pieceLocation.x + 1, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 1, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 1),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 1),
                                Location(x: pieceLocation.x + 2, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 2, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 2),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 2),
                                Location(x: pieceLocation.x + 3, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 3, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 3),
                                Location(x: pieceLocation.x, y:pieceLocation.y - 3),
                                Location(x: pieceLocation.x + 4, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 4, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 4),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 4),
                                Location(x: pieceLocation.x + 5, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 5, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 5),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 5),
                                Location(x: pieceLocation.x + 6, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 6, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 6),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 6),
                                Location(x: pieceLocation.x + 7, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 7, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 7),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 7)]
    for move in moves {
        if move.x < 0 || move.x > 7 || move.y < 0 || move.y > 7 {
            moves.remove(move)
        }
    }
    return moves
}

print(possibleRookPositions(pieceLocation: Location(x: 0, y: 0)))
print(possibleRookPositions(pieceLocation: Location(x: 4, y: 3)))

/*listValidEndLocations(piece: .knight, startLocation: (0, 0)) -> [(x: 2, y: 1), (x: 1, y: 2)]
 
 listValidEndLocations(piece: .rook, startLocation: (0, 0)) -> [(x: 0, y: 1), (x: 0, y: 2), (x: 0, y: 3), (x: 0, y: 4), (x: 0, y: 5), (x: 0, y: 6), (x: 0, y: 7), (x: 1, y: 0), (x: 2, y: 0), (x: 3, y: 0), (x: 4, y: 0), (x: 5, y: 0), (x: 6, y: 0), (x: 7, y: 0)]
 
 listValidEndLocations(piece: .rook, startLocation: (4, 3)) -> [(x: 0, y: 3), (x: 1, y: 3), (x: 2, y: 3), (x: 3, y: 3), (x: 4, y: 0), (x: 4, y: 1), (x: 4, y: 2), (x: 4, y: 4), (x: 4, y: 5), (x: 4, y: 6), (x: 4, y: 7), (x: 5, y: 3), (x: 6, y: 3), (x: 7, y: 3)]*/
