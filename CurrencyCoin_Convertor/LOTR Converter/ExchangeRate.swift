//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 10/07/23.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: String
    @State var rightImage: String
    @State var text: String
    
    var body: some View {
        HStack{
            //left-currency Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Exchange rate text
            Text(text)
            
            //Right-currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImage: "goldpenny", rightImage: "silverpiece", text: "1 Gold Penny = 4 Silver Pieces")
            .previewLayout(.sizeThatFits)
    }
}
