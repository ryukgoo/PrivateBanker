//
//  PlayerDetail.swift
//  PrivateBanker
//
//  Created by ywkimMac on 2022/12/02.
//

import SwiftUI
import BankerKit

struct PlayerDetail: View {
    var player: Player

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(player.name)
                        .font(.title)
                    Spacer()
                }
                .padding()
            }

            Divider()

            Form {
                Section {
                    LabeledContent("Buy In") {
//                        TextField("Buy In", text: player.name)
                    }
                } header: {
                    Text("Status")
                }
            }
        }
        .padding()
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: Player.samples[0])
    }
}
