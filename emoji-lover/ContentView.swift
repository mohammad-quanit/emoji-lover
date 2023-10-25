//
//  ContentView.swift
//  emoji-lover
//
//  Created by mquanit on 25/10/2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😀,😃,🌾,💐
}

struct ContentView: View {
    @State var selection: Emoji = .💐
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
