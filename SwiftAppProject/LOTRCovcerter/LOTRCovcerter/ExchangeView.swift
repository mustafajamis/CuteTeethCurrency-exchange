//
//  ExchangeView.swift
//  LOTRCovcerter
//
//  Created by Mustafa Jamis on 8/31/24.
//

import SwiftUI

struct ExchangeView: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack {
            // Backgrount image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // Tittle text
                Text("Exchange Rate")
                    .font(.largeTitle)
                    .tracking(3)
                // Description text
                Text("We're happy to exchange all known currencies, from US Dollars to British Pounds—except Brandy Bucks, which turned out to be a person, not money! Below is a simple guide to our exchange rates.")
                    .font(.title2)
                    .padding()
                // Exchange rates
                HStack {
                    // Left Currency
                    Image(.usDollar)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    // Exchange rate text
                    Text("1 Us Dollar = 0.82 British Pound")
                    
                    // Right currency image
                    Image(.ukPound)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                
                // Done buttone
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .foregroundColor(.black)
        }
    }
}
    #Preview {
        ExchangeView()
    }
