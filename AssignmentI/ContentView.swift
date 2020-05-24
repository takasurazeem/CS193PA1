//
//  ContentView.swift
//  AssignmentI
//
//  Created by Takasur Azeem on 23/05/2020.
//  Copyright © 2020 Takasur Azeem. All rights reserved.
//

import SwiftUI

struct ContentView: View {
<<<<<<< HEAD
    
    var viewModel: EmojiMemoryGame
    
=======
    var viewModel: EmojiMemoryGame
>>>>>>> temp
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
<<<<<<< HEAD
                }
                .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .padding()
        .foregroundColor(.yellow)
        .font(viewModel.cards.count <= 4 ? .largeTitle : .body)
=======
                }.aspectRatio(2/3, contentMode: .fit)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(viewModel.cards.count <= 4 ? .largeTitle : .body)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 10).stroke()
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10)
            }
        }
>>>>>>> temp
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 10).stroke()
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
