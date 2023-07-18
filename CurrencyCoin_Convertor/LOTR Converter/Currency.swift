//
//  Currency.swift
//  LOTR Converter
//
//  Created by Kumar Darpak on 14/07/23.
//

import Foundation

enum currency : Double, CaseIterable {
    case copperPenny = 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 3
    case goldPiece = 1
    
    func convert(amountString: String, to Currency: currency) -> String{
        //Turning the String in Double using guard because it'll return the default string if the user is giving other than convertable double value
        guard let startAmount = Double(amountString) else {
            return ""
        }
        
        let convertedAmount = (startAmount / self.rawValue) * Currency.rawValue
        if convertedAmount > 0{
            return String(format: "%.2f", convertedAmount)
        } else {
            return ""
        }
    }
}

enum currencyText: String, CaseIterable {
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case silverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
    
}

enum currencyImage: String, CaseIterable {
    case copperPenny = "copperpenny"
    case silverPenny = "silverpenny"
    case silverPiece = "silverpiece"
    case goldPenny = "goldpenny"
    case goldPiece = "goldpiece"
}


