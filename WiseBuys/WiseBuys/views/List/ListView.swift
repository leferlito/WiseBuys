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
        NavigationView {
            ZStack{
                Color("blueBackground")
                    .ignoresSafeArea()
                VStack {
                    Text("Grocery List")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 50)
                        .foregroundColor(Color("blueAccent"))
                    
                    
                    // Text("\(item)")
                    Button {
                        bring_up_search_bar = true
                    } label: {
                        HStack{
//                            Image(systemName: "plus")
//                                .padding()
//                                .foregroundColor(Color(.black))
                              
                     

                            HStack {
//                                Spacer()
                                HStack {
                                    Spacer()
                                    Text("Add Item")
                                        .foregroundColor(Color(.black))
                                        .padding()
                                    Spacer()
                                }
//                                Spacer()
                                
                            }
            
                                
                        }
                        .frame(width: 325, height: 45, alignment: .center)
                        .background(Color("midBlue"))
                        .cornerRadius(12)
                    }
                   // .padding(.vertical, 5)
                    
                    //            Button("Add Item"){
                    //                bring_up_search_bar = true
                    //            }
                    VStack{
                        Spacer()
                        ScrollView {
                            VStack{
                                ForEach(vm.selected_products, id: \.self){ item in
                                   
                                    if (vm.selected_products[0].isEmpty) {
                                        Image(systemName: "cart.fill")
                                            .foregroundColor(Color("blueAccent"))
                                    }
                                    HStack {
                                        Text(item)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                    // .padding(.vertical)
                                        .foregroundColor(Color(.white))
                                        .frame(width: 300, height: 35, alignment: .center)
                                        .background(Color("blueAccent"))
                                        .cornerRadius(12)
                                }
                            }
                            //padding(.vertical)
                        }
                    }
                    .frame(width: 325, height: 400, alignment: .center)
                    .background(Color("midBlue"))
                    .cornerRadius(12)
                    .padding(.vertical,20)
                    
                    Button {
                        print("checkout")
                    } label: {
                        Text("Checkout")
                            .foregroundColor(Color(.black))
                            .frame(width: 325, height: 45, alignment: .center)
                            .background(Color("midBlue"))
                            .cornerRadius(12)
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
            //  .background("blueBackground")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
