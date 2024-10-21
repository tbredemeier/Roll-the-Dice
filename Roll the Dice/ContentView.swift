//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Tom Bredemeier on 10/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Text("Roll Dice").font(.title)
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                    withAnimation {
                        rotation += 360
                    }
                }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
