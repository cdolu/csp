//
//  ContentView.swift
//  wmoji
//
//  Created by Ceren Dolu on 11.09.2023.
//

import SwiftUI

struct ContentView: View {
    let emo: [String] = ["1", "2", "3", "4", "5","6","7","8","9","10","11","12"]
    @State private var anlık = "1"
    @State private var i = 0


    
    var body: some View {
        ZStack {
            Image("renk")
                .resizable().ignoresSafeArea()
            
            VStack {
                Button(action: {
                    if (i == emo.count-1) {
                        i = 0
                    }
                    else {
                        i += 1
                        anlık = emo[i]
                    }
                }
                       , label: {
                    Text("emoji")
                        .font(.system(size: 30, weight:.light, design: .serif))
                        .frame(width: 250, height: 70)
                        .bold()
                        .background(Color.pink)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                )
                .padding(30)
                Image(anlık)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320)
                Spacer()
                
            }
            .padding()
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
