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
            Image("stadium")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
                VStack {
                    NavigationLink {
                        PlayerDetail(player: player)
                    } label: {
                        Text("View Details")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .padding()
                            .overlay {
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.white, lineWidth: 5)
                            }
                    }
                    Image(player.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
        }
    }
}

struct PlayerCard_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCard(player: players[0])
        PlayerCard(player: players[2])
    }
}
