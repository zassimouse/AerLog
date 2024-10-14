//
//  DetailsView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

struct DetailsView: View {
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("In 4 days")
                            .customFont(.regular, 18)
                        
                        Text("Vilnus to London")
                            .customFont(.light, 50)
                        
                        Spacer()
                        
                        HStack {
                            Text("11:40")
                            DottedLineView()
                            Text("11:40")
                        }
                        .font(.customFont(.semiBold, 20))
                        
                        HStack {
                            Text("🇱🇹VNO")
                                .padding(.horizontal, 5)
                                .background(.opacity(0.25))
                                .clipShape(Capsule())
                            
                            Spacer()
                            
                            Text("🇬🇧LHR")
                                .padding(.horizontal, 5)
                                .background(.opacity(0.25))
                                .clipShape(Capsule())
                        }
                                        
                    }
                    .padding(20)
                    .frame(height: 300)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(.bottom, 30)
                    
                    TicketView()

                }
                .background(Color("aerBlue"))
            }
            
    }

}

#Preview {
    DetailsView()
}
