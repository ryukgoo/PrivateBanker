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
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(player.name)
                .font(.title)
        }
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: Player.samples[0])
    }
}
