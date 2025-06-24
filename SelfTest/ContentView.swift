//
//  ContentView.swift
//  SelfTest
//
//  Created by Jake Emitte on 6/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 20)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            Button("Press Me!") {
                let message1 = "ON"
                let message2 = "OFF"
                message = message == message1 ? message2 : message1
                imageName = ("image\(imageNumber)")
                if imageNumber >= 9 {
                    imageNumber = 0
                }
                imageNumber = imageNumber + 1
                
                
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
