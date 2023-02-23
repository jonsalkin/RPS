//
//  Sign.swift
//  RPS
//
//  Created by Jon Salkin on 2/23/23.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 { return .rock}
    else if sign == 1 { return .paper}
    else { return .scissors}
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji:  String {
        switch self {
        case .rock:
            return "👊🏼"
        case .paper:
            return "📃"
        case .scissors:
            return "✂️"
        }
        
        func gameState(against opponentSign: Sign) -> GameState {
            if self == opponentSign { return .draw }
            
            switch self {
            case .rock:
                if opponentSign == .paper {return .lose}
            case .paper:
                if opponentSign == .scissors { return .lose}
            case .scissors:
                if opponentSign == .rock { return .lose}
            }
            return .win
        }
        
    }
}
