//
//  ContentView.swift
//  yeniAdam
//
//  Created by Ceren Dolu on 4.09.2023.
//

import SwiftUI

struct ContentView: View {

    let adam: [String] = ["bir", "iki", "üç", "dört", "beş","altı","yedi","sekiz","dokuz","on"]
    @State private var anlık = "bir"
    @State private var i = 0
    

    var body: some View {
        VStack(alignment: .center) {
            Button(action: {
                if (i == adam.count-1) {
                    i = 0
                }
                else {
                    i += 1
                    anlık = adam[i]
                }
                }
            , label: {
                Text("MOVE")
                    .font(.system(size: 40))
                    .frame(width: 200, height: 70)
                    .bold()
                    .background(Color.mint)
                    .foregroundColor(.black)
                    .cornerRadius(30)
            }
            )
            Image(anlık)

        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
