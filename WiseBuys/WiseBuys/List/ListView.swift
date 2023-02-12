//
//  ListView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import SwiftUI

struct ListView: View {
    @StateObject private var vm = ListViewModel()
    var body: some View {
        VStack{
            Text("My List")
                .font(.largeTitle)
            ScrollView {
                List{
                    ForEach(vm.listItems, id: \.self){ item in
                        Text(item.name)
                    }
                }
            }
//            Button("Add Item"){
//                NavigationLink(destination: SearchView()){
//                }
//            }
//            Button("Checkout"){
//                NavigationLink(destination: SearchView()){
//                }
//            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
