//
//  UpcomingView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 13.10.24.
//

import SwiftUI

struct UpcomingView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack {
                    
                    NavigationLink {
                        StatsView()
                    } label: {
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }

                    
                    
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .frame(width: 40, height: 40)
                        .background(.aerGrey)
                        .clipShape(Circle())
                    
                }
                
                Text("Hi, Denis!")
                    .customFont(.medium, 26)
                
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
                .background(Color("aerBlue"))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.bottom, 30)
                
                HStack {
                    HStack {
                        Text("Upcoming Flights")
                            .foregroundStyle(.white)
                        Text("(16)")
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    Text("See all")
                        .underline()
                }
                .font(Font.customFont(.regular, 14))
                
                LazyVStack {
                    VStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Sep 27 2024")
                                    .foregroundStyle(.gray)
                                    .font(.customFont(.regular, 14))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 10, height: 10)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Text("🇫🇷Paris")
                                    .customFont(.bold, 14)
                                Text("to")
                                    .customFont(.regular, 14)
                                Text("🇨🇭Geneva")
                                    .customFont(.bold, 14)
                            }
                        }
                    }
                    .padding(15)
                    .background(Color(.aerGrey))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                Spacer()
                
                HStack() {
                    NavigationLink {
                        AddFlightView()
                    } label: {
                        HStack {
                            Text("Add a new fligth")
                                .customFont(.regular, 20)
                            Image(systemName: "plus.viewfinder")
                        }
                        .padding(20)
                        .foregroundStyle(.black)
                        .background(.white)
                        .background(.red)
                        .clipShape(Capsule())
                    }
                    .frame(maxWidth: .infinity)
                    
                }
                
                
            }
            .padding()
            .foregroundStyle(.white)
        .background(Color(.black))
        }
        
        
    }
}

#Preview {
    UpcomingView()
}
