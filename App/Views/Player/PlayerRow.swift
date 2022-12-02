//
//  PlayerRow.swift
//  PrivateBanker
//
//  Created by ywkimMac on 2022/12/02.
//

import SwiftUI
import BankerKit

struct PlayerRow: View {

    var player: Player

    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(maxWidth: 48, maxHeight: 48)

            Text(player.name)
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.horizontal)
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: Player.samples[0])
            .previewLayout(.fixed(width: 300.0, height: 48.0))
    }
}
