//
//  CheckoutViewModel.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import Foundation
import SwiftUI

class checkoutViewModel: ObservableObject {
    @Published var costAldi: Double = 0.0
    @Published var costKroger: Double = 0.0
    @Published var costTraderJoes: Double = 0.0
    @Published var costPublix: Double = 0.0
    @Published var costWalmart: Double = 0.0
    
    @Published var store_cost: [store: Double] = [
        .Aldi: 0.0,
        .Kroger: 0.0,
        .TraderJoes: 0.0,
        .Publix: 0.0,
        .Walmart: 0.0
    ]
    
    @Published var sorted_costs: [Double] = [0.0, 0.0, 0.0, 0.0, 0.0]
    @Published var stores: [store] = []

    
    @Published var minCost: Double? = nil
    @Published var bestStore: store? = nil
        
    func sumOfCost (listOfProducts: [String]) {
        store_cost[.Aldi] = 0.0
        store_cost[.Kroger] = 0.0
        store_cost[.TraderJoes] = 0.0
        store_cost[.Publix] = 0.0
        store_cost[.Walmart] = 0.0
        
        for product in listOfProducts {
            store_cost[.Aldi]! += (Aldi[product]![0].dropFirst()as NSString).doubleValue
            store_cost[.Kroger]! += (Kroger[product]![0].dropFirst()as NSString).doubleValue
            store_cost[.TraderJoes]! += (TraderJoes[product]![0].dropFirst()as NSString).doubleValue
            store_cost[.Publix]! += (Publix[product]![0].dropFirst()as NSString).doubleValue
            store_cost[.Walmart]! += (Walmart[product]![0].dropFirst()as NSString).doubleValue
        }
        
    }
    
    func find_best(products: [String]){
        self.sumOfCost(listOfProducts: products)
        var costs: [Double] = []
        var stores: [store] = []
        
        self.store_cost.forEach { info in
            costs.append(info.value)
        }
        costs.sort(by: {$1 > $0})
        self.sorted_costs = costs
        
        costs.forEach { price in
            if self.store_cost[.Aldi] == price{
                stores.append(.Aldi)
            }
            else if self.store_cost[.Kroger] == price{
                stores.append(.Kroger)
            }
            else if self.store_cost[.TraderJoes] == price{
                stores.append(.TraderJoes)
            }
            else if self.store_cost[.Publix] == price{
                stores.append(.Publix)
            }
            else if self.store_cost[.Walmart] == price{
                stores.append(.Walmart)
            }
            self.stores = stores
            self.sorted_costs = costs
        }
        return
    }
    
    
}

enum store {
    
    case Aldi
    case Kroger
    case TraderJoes
    case Publix
    case Walmart
}
