//
//  IconGrid.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 17/07/23.
//

import SwiftUI

struct IconGrid: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var Currency: currency
    var body: some View {
        LazyVGrid(columns: gridLayout){
            ForEach(0..<5){ i in
                if currency.allCases[i] == Currency{
                    CurrencyIcon(currencyImage: currencyImage.allCases[i].rawValue, currencyText: currencyText.allCases[i].rawValue)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 4)
                            .opacity(0.5))
                        .shadow(color: .gray, radius: 9)
                }else {
                    CurrencyIcon(currencyImage: currencyImage.allCases[i].rawValue, currencyText: currencyText.allCases[i].rawValue)
                        .onTapGesture {
                            Currency = currency.allCases[i]
                        }
                }
            }
        }
        .padding([.bottom, .leading, .trailing])
    }
}

struct IconGrid_Previews: PreviewProvider {
    static var previews: some View {
        IconGrid(Currency: .constant(.silverPiece))
    }
}
