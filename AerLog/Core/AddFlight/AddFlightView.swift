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
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack(spacing: 5) {
                    Button {
//                        AirportListView(flightViewModel: viewModel)
                        showingSheet.toggle()
                    } label: {
                        Text("VNO")
                            .font(.customFont(.regular, 16))
                            .frame(width: 70, height: 35)
                            .background(.aerGrey)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    .sheet(isPresented: $showingSheet, content: {
                        AirportListView(flightViewModel: viewModel)
                    })
                    
                    Text("LHR")
                        .font(.customFont(.regular, 16))
                        .frame(width: 70, height: 35)
                        .background(.aerGrey)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    Text("OCT 14, 2024")
                        .font(.customFont(.regular, 16))
                        .frame(height: 35)
                        .frame(maxWidth: .infinity)

                        .background(.aerGrey)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
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
                    .frame(height: 40)
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
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
                    .frame(height: 40)
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
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
                    .frame(height: 40)
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                }
                
                DatePicker("Enter your birthday", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
                    .tint(.aerBlue)
                    .colorScheme(.dark) // or .light to get black text
                    .padding(.horizontal, 5)
                    .background(.aerGrey)
                    .clipShape(RoundedRectangle(cornerRadius: 12))


                
                Spacer()
                
            }
            .navigationBarBackButtonHidden(true)
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
    }
}

#Preview {
    NavigationStack{
        AddFlightView()
    }
}
