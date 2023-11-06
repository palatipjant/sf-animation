//
//  ContentView.swift
//  sf-animation
//
//  Created by Palatip Jantawong on 7/11/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var muteOn = false
    private var buttonTitle: String {
            return muteOn ? "Unmute" : "Mute"
    }
    
    @State private var Connect = 0
    
    var body: some View {
        VStack {
            Image(systemName: "wifi")
                .symbolEffect(
                    .variableColor.reversing
                )
            
            Button {
                Connect += 1
            } label: {
                Label("Reconnect", systemImage: "wifi")
            }
                .symbolEffect(.bounce, value: Connect)
                
            Button {
                            muteOn.toggle()
            } label: {
                Label(buttonTitle, systemImage: !muteOn ? "speaker.wave.3.fill" : "speaker.slash.fill")
            }
                .contentTransition(.symbolEffect(.replace))
        }
        .padding().font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
