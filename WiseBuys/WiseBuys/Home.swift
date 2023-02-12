//
//  Home.swift
//  WiseBuys
//
//  Created by Kiernan Almand on 2/11/23.
//

import SwiftUI

struct Home: View {
    let font: String = "Yellowtail-Regular"
    var body: some View {
        ZStack(){
            Color("blueBackground")
                .ignoresSafeArea()
            VStack(spacing: 5){
                //            ZStack{
                //                Circle()
                // VStack{
                Text("Wise Buys")
                    .font(.custom(font, size: 80))
                    .foregroundColor(Color("darkGreen"))
                    .padding(.top, 40)
                Text("Happy shopping!")
                    .font(.custom(font, size: 40))
                    .foregroundColor(Color("darkGreen"))
                Image("WiseBuysLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 450, height: 450)
                ZStack(){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 345, height: 90, alignment: .center)
                        .foregroundColor(Color("blueAccent"))
                
                    
                }
                
                //  }
                //            }
                //        }
            }
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
