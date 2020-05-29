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
        let emojis = ["🍇", "🍊", "🍏", "🍋", "🍍", "🧀", "🥐", "🍕", "🍓", "🍔", "🍟", "🧊"]
        assert(emojis.count >= 12, "Have at least a dozen emojis")
        
        let minNumberOfPair = 2
        assert(minNumberOfPair >= 2 && minNumberOfPair < emojis.count - 2 , "minNumberOfPair must be at least two")
        
        let maxNumberOfPair = 5
        
        let randomEmojisSubset = emojis.shuffled().prefix(maxNumberOfPair)
        return MemoryGame<String>(numberOfPairOfCards: Int.random(in: minNumberOfPair...randomEmojisSubset.count)) { pairIndex in
            return randomEmojisSubset[pairIndex]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards.shuffled().shuffled().shuffled()
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
