//
//  DetailsView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

struct DetailsView: View {
    var animationNamespace: Namespace.ID
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading) {
                    Banner()
                        .matchedGeometryEffect(id: 1, in: animationNamespace)

                    TicketView()
                }
                .background(Color("aerBlue"))
            }
    }

}

#Preview {
    DetailsView(animationNamespace: Namespace().wrappedValue)
}
