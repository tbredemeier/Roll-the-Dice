//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Tom Bredemeier on 10/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    var body: some View {
        VStack {
            Text("Roll Dice").font(.title)
            Text("\(randomValue)").font(.system(size: 72))
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
