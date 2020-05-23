//
//  ContentView.swift
//  AssignmentI
//
//  Created by Takasur Azeem on 23/05/2020.
//  Copyright © 2020 Takasur Azeem. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(.yellow)
        .font(viewModel.cards.count <= 4 ? .largeTitle : .title)
        .aspectRatio(3/2, contentMode: .fit)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).foregroundColor(.white)
            RoundedRectangle(cornerRadius: 10)
            Text(card.content)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
