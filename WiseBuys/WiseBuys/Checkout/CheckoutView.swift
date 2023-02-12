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
            Spacer()
                .frame(height: 20)
            Text("Checkout")
            .font(.system(size: 60).weight(.bold))
                .foregroundColor(.darkGreen)
            
            Spacer()
                .frame(height: 65)
            HStack {
                Text("Edit")
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 86, height: 35)
                    .background(Color.darkGreen)
                    .cornerRadius(20)
                Spacer()
            }
            .padding(.horizontal, 25)
//            Spacer()
            .padding(.vertical, 30)
            HStack {
                Text("Stores")
                    .padding(.leading)
                Spacer()
                Text("Prices")
                    .padding(.trailing)
            }.foregroundColor(Color.darkGreen)
                .frame(width: 355, height: 43)
                .background(Color.lightGreen)
                .cornerRadius(20)
            Spacer()
                .frame(height: 40)
            VStack(spacing: 15) {
                ForEach(0..<5, id: \.self){ index in
                    ZStack (alignment: .leading){
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.darkGreen)
                        HStack{
                            if vm.stores.count > 0{
                                if vm.stores[index] == .Aldi {
                                    NavigationLink(destination: StoreDetailsView(storeName: .Aldi, groceries: products), label: { Text("Aldi")
                                        .foregroundColor(Color.white)})
                                }
                                else if vm.stores[index] == .Kroger {NavigationLink(destination: StoreDetailsView(storeName: .Kroger, groceries: products), label : {
                                    Text("Kroger")
                                    .foregroundColor(Color.white)})
                                }
                                else if vm.stores[index] == .TraderJoes {
                                    NavigationLink(destination: StoreDetailsView(storeName: .TraderJoes, groceries: products), label : {
                                        Text("Trader Joes")
                                        .foregroundColor(Color.white)})
                                }
                                else if vm.stores[index] == .Publix {
                                    NavigationLink(destination: StoreDetailsView(storeName: .Publix, groceries: products), label : {
                                        Text("Publix")
                                        .foregroundColor(Color.white)})
                                }
                                
                                else if vm.stores[index] == .Walmart {
                                    NavigationLink(destination: StoreDetailsView(storeName: .Walmart, groceries: products), label : {
                                        Text("Walmart")
                                        .foregroundColor(Color.white)})
                                }
                            }
                            Spacer()
                            Text("$\(vm.sorted_costs[index],specifier: "%.2f")")
                                .foregroundColor(Color.white)
                            
                            
                            
                        }.padding(.horizontal)
                        
                    }
                        
                    }.padding(.horizontal)
                        .frame(height: 55)
                }
            
            Spacer()
            }
        .background(Color.blueBackground)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear{
                vm.find_best(products: products)
            }
    }
}

extension Color {
    static let lightGreen = Color("lightGreen")
    static let darkGreen = Color("darkGreen")
    static let blueBackground = Color("blueBackground")
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
