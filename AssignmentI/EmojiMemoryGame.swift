//
//  EmojiMemoryGame.swift
//  AssignmentI
//
//  Created by Takasur Azeem on 23/05/2020.
//  Copyright © 2020 Takasur Azeem. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    
    private var model = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🇵🇰", "💚", "🇹🇷", "🍎", "🍇"]
        return MemoryGame<String>(numberOfPairOfCards: Int.random(in: 2...emojis.count)) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.chose(card: card)
    }
}
