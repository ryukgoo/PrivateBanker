//
//  HomeView.swift
//  PrivateBanker
//
//  Created by ywkimMac on 2022/12/01.
//

import SwiftUI
import BankerKit

struct HomeView: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack(alignment: .leading) {
//                Text("Welcome back!!")
//                    .font(.title2)
//                Text("gg")
//                    .font(.title)
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.vertical)
//            .padding(.horizontal)
//        }
        VStack {
            VStack(alignment: .leading) {
                Text("Welcome back!!")
                    .font(.title2)
                Text("gg")
                    .font(.title)
                List {
                    ForEach(Player.samples) { player in
                        NavigationLink {
                            PlayerDetail(player: player)
                        } label: {
                            PlayerRow(player: player)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical)
            .padding(.horizontal)
        }
        .frame(maxHeight: .infinity)
        .overlay(alignment: .bottom) {
            Button {
                // action
            } label: {
                Label {
                    Text("Add Game")
                        .font(.callout)
                        .fontWeight(.semibold)
                } icon: {
                    Image(systemName: "plus.app.fill")
                }
                .foregroundColor(.white)
                .padding(.vertical, 12)
                .padding(.horizontal)
                .background(.black, in: Capsule())
            }
            .padding(.top, 10)
            .frame(maxWidth: .infinity)
            .background {
                LinearGradient(colors: [
                    .white.opacity(0.05),
                    .white.opacity(0.4),
                    .white.opacity(0.7),
                    .white
                ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
