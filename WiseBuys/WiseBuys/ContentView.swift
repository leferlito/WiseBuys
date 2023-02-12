//
//  ContentView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    let font: String = "Yellowtail-Regular"
    var body: some View {
        NavigationStack{
//            HomeView()
            StoreDetailsView(storeName: "Aldi", groceries: ["Cheese, shredded, Mozarella", "Cheese, sliced, deli", "Hot Dog Buns"])
        }
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
