//
//  UpcomingView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 4.03.25.
//

import SwiftUI

struct UpcomingView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical) {
                LazyVStack {
                    FlightCell()
                    FlightCell()
                }
            }
            .scrollIndicators(.hidden)
            Spacer()


        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.black, for: .navigationBar)
        .toolbar {
            
            ToolbarItem(placement: .principal) {
                Text("Upcoming")
                    .font(.customFont(.medium, 20))
              }
            
            ToolbarItem(placement: .topBarLeading) {
                
                Button(action: {
                    dismiss()
                }, label: {
                    
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .frame(width: 40, height: 40)
                        .background(.aerCircle)
                        .clipShape(Circle())
                })
            }
        }
        .padding()
//        .background(.red)
        .foregroundStyle(.white)

    }
}

#Preview {
    UpcomingView()
}
