//
//  TabView.swift
//  WiseBuys
//
//  Created by Kiernan Almand on 2/11/23.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {

                Home()
                    .tabItem {
                        Image(systemName: "house")
                            .foregroundColor(.blue)
                    }
                
                ListView()
                    .tabItem {
                        Image(systemName: "list.clipboard")
                            .foregroundColor(.black)
                    }
                
                SearchView()
                    .tabItem {
                        ZStack{
                            Circle()
                            Image(systemName: "magnifyingglass")
                        }
                    }
                
            
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color.pink, for: .tabBar)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
