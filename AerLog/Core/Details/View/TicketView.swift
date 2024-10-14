//
//  TicketView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("FR 46545")
                .font(.customFont(.regular, 16))
            
            HStack {
                HStack {
                    Image("ryanair")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text("Ryanair")
                        .font(.customFont(.regular, 14))

                }
                
                Spacer()
                
                Text("10:00 am")
                    .font(.customFont(.regular, 14))

            }
            
            HStack(alignment: .top) {
                
                VStack(alignment: .leading) {
                    Text("VNO")
                        .font(.customFont(.bold, 40))
                    Text("Vilnius, Lithuania")
                        .font(.customFont(.regular, 12))
                }
                
                Image(systemName: "arrow.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .frame(maxWidth: .infinity)
                
                VStack(alignment: .trailing) {
                    Text("LHR")
                        .font(.customFont(.bold, 40))
                    Text("London, United Kingdom")
                        .font(.customFont(.regular, 12))

                }

            }
            
            Divider()
            
            Text("Passenger Name")
                .font(.customFont(.regular, 14))
            
            Text("Den Haritonenko")
                .font(.customFont(.semiBold, 30))

            
            Divider()
            
            HStack() {
                VStack(alignment: .leading) {
                    Text("Terminal")
                    Text("01")
                        .font(.customFont(.semiBold, 30))
                }
                
                                
                VStack(alignment: .leading) {
                    Text("Gate")
                    Text("05")
                        .font(.customFont(.semiBold, 30))
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    Text("Seat")
                    Text("20F")
                        .font(.customFont(.semiBold, 30))
                }
            }
            

            
            DottedLine()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1, dash: [3, 3]))
                .frame(height: 1)
            
            Image("barcode")
                .resizable()
                .scaledToFit()
            
        }
        .padding(20)
        .foregroundColor(.black)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()


    }
}

#Preview {
    TicketView()
}
