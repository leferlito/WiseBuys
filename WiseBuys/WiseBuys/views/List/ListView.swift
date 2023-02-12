//
//  ListView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import SwiftUI

struct ListView: View {
    
    @StateObject private var vm = ListViewModel()
    @State var bring_up_search_bar = false
    
    @State var item = ""
    
    var body: some View {
        VStack{
            Text("**MyList**")
                .font(.largeTitle)
            List{
                ForEach(vm.selected_products, id: \.self){ item in
                    Text(item)
                }
            }
            
            Button("Add Item"){
                bring_up_search_bar = true
            }
            Button("Checkout"){
                //NavigationLink(CheckoutView())
            }
        }
        .sheet(isPresented: $bring_up_search_bar){
            SearchView(item: $item, stayOpen: $bring_up_search_bar)
        }
        .onChange(of: item){ item_name in
            print("add item")
            vm.addItem(item: item_name)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
