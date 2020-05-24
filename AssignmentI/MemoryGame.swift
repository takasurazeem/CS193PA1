//
//  MemoryGame.swift
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

struct MemoryGame<CardContent> {
<<<<<<< HEAD
    
    
    var cards: Array<Card>
    
=======
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("Chosen card: \(card)")
    }
    
>>>>>>> temp
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            cards.append(Card(id: pairIndex * 2, content: cardContentFactory(pairIndex)))
            cards.append(Card(id: pairIndex * 2 + 1, content: cardContentFactory(pairIndex)))
        }
<<<<<<< HEAD
        cards = cards.shuffled()
    }
    
    func chose(card: Card)  {
        print("Chosen card: \(card)")
=======
>>>>>>> temp
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
    }
<<<<<<< HEAD
    
=======
>>>>>>> temp
}
