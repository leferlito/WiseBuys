//
//  SearchView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var search: String = ""
    @Binding var item: String
    @Binding var stayOpen: Bool
    
    let myList = ["apple", "banana", "grape", "milk", "cookie"]
    
    
    var filteredItems: [String] {
        if search.isEmpty {
            return myList
        } else {
            return myList.filter{ $0.localizedCaseInsensitiveContains(self.search) }
        }
    }
    
    var body: some View {
        NavigationView{
            
            List(myList, id: \.self) { item in
                Button(action: {
                    search = item
                    stayOpen = false
                }){
                    Text(item)
                        .foregroundColor(.black)
                }
            }
            
            .searchable(text: $search, prompt: "Item search", suggestions: {
                ForEach(myList.filter {
                    $0.localizedCaseInsensitiveContains(self.search) }, id: \.self){ suggestion in
                        Text (suggestion)
                            .foregroundColor(.black)
                            .searchCompletion(suggestion)
                    }
            })
            .onSubmit(of: .search) {
                //                if let new = myList[search] {
                //                    item = new
                //                    stayOpen = false
                //                }
            }
            .navigationTitle("Search")
        }
            
    }
}

//            .onSubmit(of: .search) {
//                if let new = myList[search] {
//
//                }
//                stayOpen = false
//            }
//           stayOpen = false
//            .toolbar {
//                Button ("Done") {
//                    stayOpen = false
//                }
//            }
//        }
//    }
//}


struct SearchView_Previews: PreviewProvider {
    @State var stayopen = true
    static var previews: some View {
        //NavigationView{
            SearchView(item: .constant("apple"), stayOpen: .constant(true))
      //  }
    }
}


