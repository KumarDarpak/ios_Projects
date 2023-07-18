//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftAmount = ""
    @State var rightAmount = ""
    @State var leftCurrency : currency = .silverPiece
    @State var rightCurrency : currency = .goldPiece
    @State var leftAmountTemp = ""
    @State var rightAmountTemp = ""
    @State var leftTyping = false
    @State var rightTyping = false
    @State var showSelectCurrency = false
    @State var showExchangeInfo = false
    var body: some View {
        ZStack {
            //background image
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all) //.ignoresSafeArea()
            VStack{
                //Horse image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
//                    .padding(.top)
                
                //Currency Exchange
                Text("Currency Exchange")
                    .foregroundColor(.white)
                //                    .font(.system(.title))
                    .font(.largeTitle)
                    .fontWeight(.bold).opacity(0.9)
                
                HStack{
                    VStack{
                        HStack{
                            Image(currencyImage.allCases[currency.allCases.firstIndex(of: leftCurrency)!].rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(height:30)
                            
                            Text(currencyText.allCases[currency.allCases.firstIndex(of: leftCurrency)!].rawValue)
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()//toggle will make this false to true vice
                        }
                        .sheet(isPresented: $showSelectCurrency){
                            SelectCurrency(leftCurrency: $leftCurrency, rightCurrency: $rightCurrency)
                        }
                        
                        
                        TextField("Amount", text: $leftAmount, onEditingChanged: {
                            typing in
                            leftTyping = typing
                            leftAmountTemp = leftAmount
                        })
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(8)
                            .keyboardType(.decimalPad)
                            .onChange(of: leftTyping ? leftAmount: leftAmountTemp){ _
                                in
                                rightAmount = leftCurrency.convert(amountString: leftAmount, to: rightCurrency)
                                }
                            .onChange(of: leftCurrency){ _ in
                                leftAmount = rightCurrency.convert(amountString: rightAmount, to: leftCurrency)
                            }
                    }
                    
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    
                    VStack{
                        HStack{
                            Text(currencyText.allCases[currency.allCases.firstIndex(of: rightCurrency)!].rawValue)
                                .font(.headline)
                                .foregroundColor(.white)
                            Image(currencyImage.allCases[currency.allCases.firstIndex(of: rightCurrency)!].rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(height:30)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        .sheet(isPresented: $showSelectCurrency){
                            SelectCurrency(leftCurrency: $leftCurrency, rightCurrency: $rightCurrency)
                        }
                        
                        TextField("Amount", text: $rightAmount, onEditingChanged: {
                            typing in
                            rightTyping = typing
                            rightAmountTemp = rightAmount
                        })
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(8)
                            .keyboardType(.decimalPad)
                            .onChange(of: rightTyping ? rightAmount : rightAmountTemp){
                                _ in
                                leftAmount  = rightCurrency.convert(amountString: rightAmount, to: leftCurrency)
                            }
                            .onChange(of: rightCurrency){ _ in
                                rightAmount = leftCurrency.convert(amountString: leftAmount, to: rightCurrency)
                            }
                        
                    }
                    
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(50)
                Spacer()
                HStack {
                    Spacer() //Push down to bottom
                    Button{
                            //DIsplay Exchange info sreen
                        showExchangeInfo.toggle()
                        
                    } label: {
                        Image(systemName: "info.circle.fill")
                        }
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.trailing)
                            .sheet(isPresented: $showExchangeInfo){
                                ExchangeInfo()
                            }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

