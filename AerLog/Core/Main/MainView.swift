//
//  UpcomingView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 13.10.24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = ViewModel()
    @Namespace var heroTransition

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
                
                Text("Hi, Denis ✨")
                    .customFont(.medium, 26)
                
                NavigationLink {
                    CardView(style: .detail)
                        .navigationTransition(.zoom(sourceID: 1, in: heroTransition))
                } label: {
                    CardView(style: .list)
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                }
                .matchedTransitionSource(id: 1, in: heroTransition)
                .buttonStyle(.plain)
                .padding(.bottom, 30)
                
                HStack {
                    HStack {
                        Text("Upcoming Flights")
                            .foregroundStyle(.white)
                        Text("(16)")
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    NavigationLink {
                        UpcomingView()
                    } label: {
                        Text("See all")
                            .underline()
                    }


                }
                .font(Font.customFont(.regular, 14))
                
                LazyVStack {
                    FlightCell()
                    FlightCell()
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
    MainView()
}
