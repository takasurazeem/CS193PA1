//
//  EmojiMemoryGame.swift
//  AssignmentI
//
//  Created by Takasur Azeem on 24/05/2020.
//  Copyright © 2020 Takasur Azeem. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    var model = createEmojiMemoryGame()
    
    static func createEmojiMemoryGame() -> MemoryGame<String> {
        let emojis = ["🍇", "🍊", "🍏", "🍋", "🍍"]
        return MemoryGame<String>(numberOfPairOfCards: Int.random(in: 2...emojis.count)) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards.shuffled().shuffled().shuffled()
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
