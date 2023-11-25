//
//  MemoryGame.swift
//  Memorize
//
//  Created by legostaev on 25.11.2023.
//

import Foundation

struct MemoryGame <CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
//    init (numberOfPairsOfCards: Int) {
//
//    }
    
    struct Card {
        var isFaseUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
