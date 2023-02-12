//
//  ContentView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23..
//

import SwiftUI

struct ContentView: View {
    let font: String = "Yellowtail-Regular"
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                    .font(.custom(font, size: 30))
            }
            .padding()
            .navigationTitle("Wise Buys")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
