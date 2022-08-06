//
//  NationRow.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 05/08/2022.
//

import SwiftUI

struct NationRow: View {
    var player: Player
    
    var body: some View {
        HStack {
            player.nationImage
                .resizable()
                .frame(width: 75, height: 50)
                .padding(.horizontal, 15)
            Text(player.nationName)
                .font(.system(size: 25).bold())
                .textCase(.uppercase)
        }
        .padding(.vertical, 50)
        
    }
}

struct NationRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NationRow(player: players[0])
                .previewLayout(.fixed(width: 375, height: 80))
            NationRow(player: players[1])
                .previewLayout(.fixed(width: 375, height: 80))
        }
    }
}
