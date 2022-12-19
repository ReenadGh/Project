//
//  ContentView.swift
//  Project-1
//
//  Created by Reenad gh on 24/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimating : Bool = false
    var body: some View {
        
        VStack {
            Text("Hello, world !")
                .font(.largeTitle)
                .padding()
                .background(.blue)
                .cornerRadius(20)
                .scaleEffect(isAnimating ? 1.2 : 1)
                .opacity( isAnimating ? 1 : 0 )
            .padding()
            
            Button {
                withAnimation(.spring()){
                    isAnimating.toggle()
                }
            } label: {
                Text ("Click Me !")
                    .font(.title2)
                    .foregroundColor(.black).bold()
            }
        }
        
       

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
