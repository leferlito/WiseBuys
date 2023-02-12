//
//  StoreDetailsView.swift
//  WiseBuys
//
//  Created by Mackenzie Perry on 2/11/23.
//

import SwiftUI

struct StoreDetailsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Text("Store Details")
            HStack {
                Text("Items")
                    .padding(.leading, 15)
                Spacer()
                Text("Price")
                    .padding(.trailing, 15)
            }
            .padding(10)
            .background(Color(.gray))
            .cornerRadius(15)
            .padding(.horizontal, 30)
            
            
            //list of times and their price
            VStack{
                
            }.background()
            
            Button(action: {
                //will link out to maps
            }, label: {
                Text("Directions")
            })
            
        }.background()
    }
}

struct StoreDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailsView()
    }
}
