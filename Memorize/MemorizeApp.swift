//
//  MemorizeApp.swift
//  Memorize
//
//  Created by legostaev on 24.11.2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
