//
//  ListViewModel.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var listItems: [ListItem] = [
        ListItem(name: "item 1", price: "2.00", store: "Aldi"),
        ListItem(name: "item 2", price: "2.00", store: "Aldi"),
        ListItem(name: "item 3", price: "2.00", store: "Aldi")
    ]
    
    
    @Published var selected_products: [String] = []
    
    
    func addItem(item: String){
        self.selected_products.append(item)
    }
    
}
