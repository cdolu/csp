//
//  ContentView.swift
//  artistKare
//
//  Created by Ceren Dolu on 11.09.2023.
//

import SwiftUI

struct ContentView: View {
    let renkler: [String] = ["red", "blue", "orange", "yellow", "purple", "green"]
    @State var ontap: Bool = false
    @State var Key: String = ""
    
    
    func grid(key: String) -> some View {
        if (key == "red") {
            return ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300 , height: 300)
                    .foregroundColor(.red)
            }
        }
        if (key == "blue") {
            return ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300 , height: 300)
                    .foregroundColor(.blue)
            }

        }
        
        if (key == "orange") {
            return ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300 , height: 300)
                    .foregroundColor(.orange)
            }

        }
        
        if (key == "yellow") {
            return ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300 , height: 300)
                    .foregroundColor(.yellow)
            }

        }
        
        if (key == "purple") {
            return ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300 , height: 300)
                    .foregroundColor(.purple)
            }

        }
        
        if (key == "green") {
            return ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300 , height: 300)
                    .foregroundColor(.green)
            }

        }
        return ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300 , height: 300)
                .foregroundColor(.green)
        }

        
    }
    
    var body: some View {
        VStack {
            ForEach(renkler, id: \.self) { item in
                Button(action: {
                    ontap = true
                    Key = item
                    

                }, label: {
                    Text(item)
                        .font(.system(size: 20, weight:.bold, design: .serif))
                        .multilineTextAlignment(.center)
                        .frame(width: 360, height: 40)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                )
            }
            if ontap {
                grid(key: Key)
            }
            


        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
