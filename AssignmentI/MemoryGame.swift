//
//  MemoryGame.swift
//  AssignmentI
//
//  Created by Takasur Azeem on 23/05/2020.
//  Copyright © 2020 Takasur Azeem. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    
    
    var cards: Array<Card>
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            cards.append(Card(id: pairIndex * 2, content: cardContentFactory(pairIndex)))
            cards.append(Card(id: pairIndex * 2 + 1, content: cardContentFactory(pairIndex)))
        }
        cards = cards.shuffled()
    }
    
    func chose(card: Card)  {
        print("Chosen card: \(card)")
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
    }
    
}
