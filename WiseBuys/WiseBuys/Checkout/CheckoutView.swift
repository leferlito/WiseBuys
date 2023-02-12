//
//  CheckoutView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import SwiftUI

struct CheckoutView: View {
    
    @Binding var products: [String]
    @StateObject var vm = checkoutViewModel()
    

    var body: some View {
        VStack{
            ForEach(0..<4, id: \.self){ index in
                HStack{
                    if vm.stores.count > 0{
                        if vm.stores[index] == .Aldi {
                            Text("Aldi")
                        }
                        else if vm.stores[index] == .Kroger {
                            Text("Kroger")
                            
                        }
                        else if vm.stores[index] == .TraderJoes {
                            Text("Trader Joes")
                            
                        }
                        else if vm.stores[index] == .Publix {
                            Text("Publix")
                            
                        }
                        else if vm.stores[index] == .Walmart {
                            Text("Walmart")
                            
                        }
                    }
                    Text("\(vm.sorted_costs[index])")
                }
            }
        }.onAppear{
            vm.find_best(products: products)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(products: .constant([
            "Carrots, whole",
            "Cheese, shredded, Mexican style",
            "Tea, green, bags",
            "Sugar, brown"
        ]))
    }
}
