//
//  CurrencyIcon.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 11/07/23.
//

import SwiftUI

struct CurrencyIcon: View {
    @State var currencyImage: String
    @State var currencyText: String
    var body: some View {
        ZStack{
            //Currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            //CurrencyText
            VStack{
                Spacer()
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                    .background(.brown.opacity(0.75))
            }
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown.opacity(0.75))
        .cornerRadius(25)
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Piece")
            .previewLayout(.sizeThatFits)
    }
}
