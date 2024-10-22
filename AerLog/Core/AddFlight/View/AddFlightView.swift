//
//  AddFlightView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

struct AddFlightView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var date = Date.now
    @StateObject var viewModel = AddFlightViewModel()
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack(spacing: 5) {
                    NavigationLink {
                        AirportListView(flightViewModel: viewModel)
                    } label: {
                        Text("VNO")
                            .frame(width: 60, height: 40)
                            .background(.red)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                    
                    
                    Text("LHR")
                        .frame(width: 60, height: 40)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    
                    Text("OCT 14 2024")
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                
                
                LazyVStack {
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Yesterday")
                                .font(.customFont(.regular, 14))
                            Spacer()
                            Text("Sep 27 2024")
                                .foregroundStyle(.gray)
                                .font(.customFont(.regular, 14))
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                    }
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Yesterday")
                                .font(.customFont(.regular, 14))
                            Spacer()
                            Text("Sep 27 2024")
                                .foregroundStyle(.gray)
                                .font(.customFont(.regular, 14))
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                    }
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Yesterday")
                                .font(.customFont(.regular, 14))
                            Spacer()
                            Text("Sep 27 2024")
                                .foregroundStyle(.gray)
                                .font(.customFont(.regular, 14))
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                    }
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    
                }
                
                DatePicker("Enter your birthday", selection: $date)
                                .datePickerStyle(GraphicalDatePickerStyle())
                                .frame(maxHeight: 400)
                                .tint(.aerBlue)
                
                Spacer()
                
            }
            .navigationBarBackButtonHidden(true)
    //        .navigationTitle("Add Flight")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .principal) {
                    Text("Add Flight")
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
        .foregroundStyle(.white)
        }
        //        .background(.aerBackground)
    }
}

#Preview {
    NavigationStack{
        AddFlightView()
    }
}
