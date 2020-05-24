//
//  EmojiMemoryGame.swift
//  AssignmentI
//
<<<<<<< HEAD
//  Created by Takasur Azeem on 23/05/2020.
=======
//  Created by Takasur Azeem on 24/05/2020.
>>>>>>> temp
//  Copyright © 2020 Takasur Azeem. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
<<<<<<< HEAD
    
    private var model = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🇵🇰", "💚", "🇹🇷", "🍎", "🍇"]
=======
    var model = createEmojiMemoryGame()
    
    static func createEmojiMemoryGame() -> MemoryGame<String> {
        let emojis = ["🍇", "🍊", "🍏", "🍋", "🍍"]
>>>>>>> temp
        return MemoryGame<String>(numberOfPairOfCards: Int.random(in: 2...emojis.count)) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
<<<<<<< HEAD
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.chose(card: card)
=======
    var cards: [MemoryGame<String>.Card] {
        return model.cards.shuffled().shuffled().shuffled()
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
>>>>>>> temp
    }
}
