//
//  ContentView.swift
//  Memorize
//
//  Created by legostaev on 24.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("hello")
            ForEach(0..<4)  {index in
                CardView(isFaceUp: index % 2 == 0)
            }
        }
            .padding()
            .foregroundColor(Color.green)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                    
                Text("🥒")
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
        ContentView()
    }
}
