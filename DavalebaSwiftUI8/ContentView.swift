//
//  ContentView.swift
//  DavalebaSwiftUI8
//
//  Created by Lika Nozadze on 12/23/23.
//

import SwiftUI

struct ContentView: View {

    @State private var isAnimated = false
    
    var body: some View {
            Text("TBC IT Academy")
                .scaleEffect(isAnimated ? 2 : 1)
                .foregroundColor(isAnimated ? .red : .blue)
                
                .onTapGesture {
                    withAnimation(Animation.easeInOut(duration: 2).repeatCount(8, autoreverses: true)) {
                        isAnimated.toggle()
                    }
                }
        }
    }

#Preview {
    ContentView()
}
