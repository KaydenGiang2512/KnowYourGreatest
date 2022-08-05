//
//  PlayerCard.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 05/08/2022.
//

import SwiftUI

struct PlayerCard: View {
    var player: Player

    var body: some View {
        ZStack {
//            Color(red: 0.03, green: 0.03, blue: 0.35)
//                .edgesIgnoringSafeArea(.all)
            Image("stadium")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Image(player.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct PlayerCard_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCard(player: players[0])
        PlayerCard(player: players[1])
    }
}
