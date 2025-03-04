//
//  DetailsView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

enum CardViewStyle {
    case list
    case detail
}

struct CardView: View {
    var style: CardViewStyle
    
    var body: some View {
        VStack(alignment: .leading) {
            Banner()
            
            if style == .detail {
                TicketView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("aerBlue").ignoresSafeArea())
        .ignoresSafeArea()
        .toolbar(.hidden)
        .statusBarHidden(true)
    }
    
}

#Preview {
    DetailsView(animationNamespace: Namespace().wrappedValue)
}
