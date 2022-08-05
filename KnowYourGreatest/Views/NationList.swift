//
//  NationList.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 05/08/2022.
//

import SwiftUI

struct NationList: View {
    var body: some View {
            NavigationView {
                List(players) {
                    player in
                    NavigationLink {
                        PlayerCard(player: player)
                    } label: {
                        NationRow(player: player)
                    }
                    .navigationTitle("Football G.O.A.Ts")
                }
            }
    }
}

struct NationList_Previews: PreviewProvider {
    static var previews: some View {
        NationList()
    }
}
