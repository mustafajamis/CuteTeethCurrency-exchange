//
//  CurrencyIcon.swift
//  LOTRCovcerter
//
//  Created by Mustafa Jamis on 9/2/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage : ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            // Currency name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.brown.opacity(0.75))
                
            
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.gray)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .usDollar, currencyName: "US Dollar")
}
