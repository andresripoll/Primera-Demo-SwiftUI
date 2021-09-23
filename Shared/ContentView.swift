//
//  ContentView.swift
//  Shared
//
//  Created by a013 DIT UPM on 23/9/21.
//

    import SwiftUI

    struct ContentView: View {
        
        @State var hue: Double = 0
        @State var brightness: Double = 0
        @State var contrast: Double = 1
        @State var saturation: Double = 1
        
        var body: some View {
            VStack {
                Text("Will Smith")
                    .font(.largeTitle)
                
                Spacer()
                
                Image("face")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                    .hueRotation(Angle(degrees: hue))
                    .brightness(brightness)
                    .contrast(contrast)
                    .saturation(saturation)
                    .padding()
                
                Spacer()
                
                HStack {
                    Text("Hue:")
                    Slider(value: $hue, in: 0...360)
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Brillo:")
                    Slider(value: $brightness, in: -1...1)
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Contraste:")
                    Slider(value: $contrast, in: 0...2)
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Saturación:")
                    Slider(value: $saturation, in: 0...2)
                }
                .padding(.horizontal)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
            
    }
}
