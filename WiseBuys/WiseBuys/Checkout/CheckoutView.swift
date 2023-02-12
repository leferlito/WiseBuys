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
//                .frame(height: 43)
                Text("Checkout")
                .font(.system(size: 60).weight(.bold))
                    .foregroundColor(.darkGreen)
            
            Spacer()
//                .frame(height: 65)
            HStack {
                Text("Edit")
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 86, height: 35)
                    .background(Color.darkGreen)
                    .cornerRadius(20)
                Spacer()
            }
            .padding(.horizontal, 39)
            Spacer()
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color("lightGreen"))
                    .frame(height: 335)
                
                ForEach(0..<4, id: \.self){ index in
                    ZStack (alignment: .leading){
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.darkGreen)
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
                        
                            Spacer()
                            Text("\(vm.sorted_costs[index])")
                        }.padding(.horizontal)
                        
                }.padding(.horizontal)
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
