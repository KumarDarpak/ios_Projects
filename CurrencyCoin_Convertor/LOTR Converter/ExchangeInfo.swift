//
//  ExhangeInfo.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 07/07/23.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment (\.dismiss) var dismiss
    var body: some View {
        //        Text("Team_X")
        ZStack{
            //background
            Image("parchment")
                .resizable()
//                .edgesIgnoringSafeArea(.all)
                .background(.brown)
                .ignoresSafeArea(.all)
            VStack{
                //title
                Text("Exchange Rates")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .padding(10)
                VStack{
                    //Summary
                    Text("Here at the Prancing Pony,we are happy to offer you a place where you can exchange all the known currencies in the entire world, except one, We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us.Below is a simple guide to our currency exchange rates: ")
                        .frame(width: 370)
                        .padding(10)
                        .font(.system(.title2))
                    
                    VStack{
//
                        ExchangeRate(leftImage: "goldpiece", rightImage: "goldpenny", text: "1 Gold Piece = 4 Gold Pennies")
                        ExchangeRate(leftImage: "goldpenny", rightImage: "silverpiece", text: "1 Gold Penny = 4 Silver Pieces")
                        ExchangeRate(leftImage: "silverpiece", rightImage: "silverpenny", text: "1 Silver Piece = 4 Silver Pennies")
                        ExchangeRate(leftImage: "silverpenny", rightImage: "copperpenny", text: "1 Silver Penny = 100 Copper Pennies")
                       
                        //Done Button
                        Button("Done"){
                            dismiss()
                        }
                        .font(.largeTitle)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(15)
                    }
                    .foregroundColor(.black)
                    
                }
                
            }
        }
    }
    
    struct ExchangeInfo_Previews: PreviewProvider {
        static var previews: some View {
            ExchangeInfo()
        }
    }
    
}
