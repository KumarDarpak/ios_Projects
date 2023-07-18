//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 11/07/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var leftCurrency: currency //set the leftCurrencyy prevoius property
    @Binding var rightCurrency: currency //set the leftCurrencyy prevoius property
    
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    var body: some View {
        ZStack{
            //Background
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            

//            VStack{
//                Text("Select the currency you are starting with: ")
//                    .font(.headline)
//                    .fontWeight(.bold)
//                HStack{
//                    VStack{
//
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                Image("copperpenny")
//                                    .resizable()
//                                    .scaledToFit()
//                            )
//
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                Image("copperpenny")
//                                    .resizable()
//                                    .scaledToFit()
//                            )
//                    }
//                    VStack{
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                Image("copperpenny")
//                                    .resizable()
//                                    .scaledToFit()
//                            )
//
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                Image("copperpenny")
//                                    .resizable()
//                                    .scaledToFit()
//                            )
//                    }
//                    VStack{
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                Image("copperpenny")
//                                    .resizable()
//                                    .scaledToFit()
//                            )
//
//                    }
//                }
//                Text("Select the currency you would like to convert to")
//                    .frame(width: 320)
//                    .font(.headline)
//                    .fontWeight(.bold)
//                HStack{
//                    VStack{
//
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                    Image("copperpenny")
//                                        .resizable()
//                                        .scaledToFit()
//                                )
//
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                    Image("copperpenny")
//                                        .resizable()
//                                        .scaledToFit()
//                                )
//                    }
//                    VStack{
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                    Image("copperpenny")
//                                        .resizable()
//                                        .scaledToFit()
//                                )
//
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                    Image("copperpenny")
//                                        .resizable()
//                                        .scaledToFit()
//                                )
//                    }
//                    VStack{
//                        Rectangle()
//                            .fill(Color.brown.opacity(8))
//                            .scaledToFit()
//                            .frame(width: 100, height: 100)
//                            .cornerRadius(15)
//                            .overlay(
//                                    Image("copperpenny")
//                                        .resizable()
//                                        .scaledToFit()
//                                )
//
//                    }
//                }
//
//                //Done Button
//                Button("Done"){
////                    ExchangeInfo()
//                }
//                .font(.largeTitle)
//                .padding(10)
//                .foregroundColor(.white)
//                .background(.brown)
//                .cornerRadius(15)
//
//            }
            VStack{
                //Text
                Text("Select the currency you are starting with: ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                
                //Currency icons
//               CurrencyIcon(currencyImage: "copperpenny", currencyText: "Copper penny")
                IconGrid(Currency: $leftCurrency)

                //Text
                Text("Select the currency  you  would  like to convert to: ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center) //line alignment
                
                
                //Currency icons
                IconGrid(Currency: $rightCurrency)
                
                //Done Button
                Button("Done"){
                    dismiss()
                }
                .font(.largeTitle)
//                .font(.system(.title))
                .padding(10)
                .background(.brown)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                }
            }
        }
    }

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPenny))
    }
}
