//
//  ContentView.swift
//  About Me
//
//  Created by Samantha Castillo.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "About Me"
    @State private var image = "person.fill.questionmark.rtl"
    
    var body: some View {
        VStack {
            Image(systemName:image)
                .scaledToFill()
                .font(.title)
                .foregroundColor(.mint)
            Text(message)
                .font(.subheadline)
                .fontWeight(.semibold)
            HStack {
                Button("Hobby") {
                    message = "I make art as a hobby."
                    image = "paintbrush.pointed.fill"
                }
                Button("Music") {
                    message = "My favorite music is Indie music."
                    image = "music.note"
                }
                Button("Dream") {
                    message = "I'd like to make my own comic someday."
                    image = "exclamationmark.bubble"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
