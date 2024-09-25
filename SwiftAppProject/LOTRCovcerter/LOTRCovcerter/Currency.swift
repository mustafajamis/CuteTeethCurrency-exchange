//
//  Currency.swift
//  LOTRCovcerter
//
//  Created by Mustafa Jamis on 9/8/24.
//
import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    
    // Exchange rates relative to USD
    case usd = 1.0       // US Dollar (base)
    case cad = 1.35      // Canadian Dollar
    case gbp = 0.82      // British Pound
    case eur = 0.94      // Euro
    
    var id: Double { rawValue }

    
    var image: ImageResource {
        switch self {
        case .usd:
                .usDollar
        case .cad:
                .canadianDollar
        case .gbp:
                .ukPound
        case .eur:
                .euro
        }
    }
    var name: String {
        switch self {
        case .usd:
            "US Dollar"
        case .cad:
            "Canadian Dollar"
        case .gbp:
            "British Pound"
        case .eur:
            "Euro"
        }
    }
    func convert(_ amountString: String, to currency: Currency) -> String {
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        let convertAmount = (doubleAmount / self.rawValue) * currency.rawValue
        
        return String(format: "%.2f", convertAmount)
    }
}
