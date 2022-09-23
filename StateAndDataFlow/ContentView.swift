//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Турчак on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(tapCount: $tapCount)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    
   @Binding var tapCount: Int
    
    var body: some View {
        Button("Tap Me") {
            tapCount += 1
        }
    }
}
