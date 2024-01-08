//
//  ContentView.swift
//  Memorize
//
//  Created by legostaev on 24.11.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        HStack {
            Text("hello")
            ForEach(viewModel.cards)  {card in
                CardView(card: card).onTapGesture {viewModel.choose(card: card)}
            }
        }
            .padding()
            .foregroundColor(Color.green)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                    
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.green)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
            }
        }.foregroundColor(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
