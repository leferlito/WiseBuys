//
//  ListItem.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import Foundation

struct ListItem: Hashable, Identifiable {
    var name: String
    var price: String
    var store: String
    var id: UUID
}
