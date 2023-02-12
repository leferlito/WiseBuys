//
//  StoreDetailsView.swift
//  WiseBuys
//
//  Created by Kiernan Almand on 2/12/23.
//

import SwiftUI
struct StoreDetailsView: View {
    let font: String = "Yellowtail-Regular"
    let font2: String = "YesevaOne-Regular"
    var storeName: String
    var groceries: [String]
    
    var listItems: [[String]]{
        var final: [[String]] = []

            if storeName == "Aldi"{
                for item in groceries{
                    final.append([item, Aldi[item]![0]])
                }
            }
            else if storeName == "Kroger"{
                for item in groceries{
                    final.append([item, Kroger[item]![0]])
                }
            }
            else if storeName == "TraderJoes"{
                for item in groceries{
                    final.append([item, TraderJoes[item]![0]])
                }
            }
            else if storeName == "Publix"{
                for item in groceries{
                    final.append([item, Publix[item]![0]])
                }
            }
            else if storeName == "Walmart"{
                for item in groceries{
                    final.append([item, Walmart[item]![0]])
                }
            }

        return final;
    }
    
    var body: some View {
        ZStack{
            Color("blueBackground")
                .ignoresSafeArea()
            VStack(spacing: 10){
                Text(storeName)
                    .font(.custom(font2, size: 55))
                    .foregroundColor(Color("darkGreen"))
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("brightBlue"))
                        .padding(.horizontal, 20)
                    ScrollView{
                        
                            VStack(spacing: 10){
                                
                                ForEach(listItems, id: \.self){ item in
                                    ZStack(alignment: .leading){
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(height: 55)
                                            .foregroundColor(.white)
                                            .padding()
                                        HStack{
                                            Text(item[0])
                                                .font(.custom(font2, size: 20))
                                                .foregroundColor(Color("darkGreen"))
                                                .padding(.horizontal, 30)
                                            Spacer()
                                            VStack {
                                                Text(item[1])
                                                    .font(.custom(font2, size: 15))
                                                    .foregroundColor(Color("darkGreen"))
                                                    .padding(.trailing, 30)
                                            }
                                        }
                                    }
                                    .frame(height: 55)
                                    .padding(.horizontal, 30)
                                }
                                
                            }
                            
//                            RoundedRectangle(cornerRadius: 20)
//                                .foregroundColor(Color("brightBlue"))
//                                .padding(.horizontal, 20)
                        
                    }.padding(.vertical)
//                    RoundedRectangle(cornerRadius: 20)
//                        .foregroundColor(Color("brightBlue"))
//                        .padding(.horizontal, 20)
                }
                HStack{
                    NavigationLink(destination: HomeView(), label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 90)
                                .foregroundColor(Color("blueAccent"))
                                .padding(.leading, 20)
                            Text("Done")
                                .font(.custom(font, size: 30))
                                .foregroundColor(.white)
                            
                        }
                    })
//                    NavigationLink(destination: ListView(), label: {
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 20)
//                                .frame(height: 90)
//                                .foregroundColor(Color("blueAccent"))
//                                .padding(.trailing, 20)
//                            Text("Directions")
//                                .font(.custom(font, size: 30))
//                                .foregroundColor(.white)
//                        }
//                    })
                    Button(action: {
                                UIApplication.shared.open(URL(string: "https://www.google.com/maps/")!)
                            }) {
                                Text("Directions")
                                    .font(.custom(font, size: 30))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 165, height: 90)
                            .background(Color("blueAccent"))
                                   .foregroundColor(.white)
                                   .cornerRadius(20)
                                   .padding(.trailing, 20)
                    }
                }
            }
        }
    }

struct StoreDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailsView(storeName: "Aldi", groceries: ["Cheese, shredded, Mozarella", "Cheese, sliced, deli", "Hot Dog Buns"])
    }
}


