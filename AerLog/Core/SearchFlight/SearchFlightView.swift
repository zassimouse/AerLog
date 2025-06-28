//
//  SearchFlightView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 5.02.25.
//

import SwiftUI

struct SearchFlightView: View {
    @State var text = ""
    @State var color = Color.gray
    
    var body: some View {
        VStack {
            
            TextField("Flight Number", text: $text)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(color, lineWidth: 1)
                )
            
            Text("\(Image(systemName: "exclamationmark.triangle.fill")) Could not load flight data ")
                .customFont(.regular, 12)
                .foregroundStyle(.red)
            
            Spacer()
                .frame(height: 15)
            
            Button {
                color = .red
            } label: {
                Text("Continue")
                    .customFont(.regular, 18)
                    .foregroundStyle(.black)
                    .frame(height: 45)
                    .frame(width: 200)
                    .background(Color.white)
                    .clipShape(Capsule())
            }
            
            Spacer()
                .frame(height: 20)
            
            Button {
                
            } label: {
                Text("Continue without flight number")
                    .foregroundStyle(.white)
                    .customFont(.regular, 16)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SearchFlightView()
}
