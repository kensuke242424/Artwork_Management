//
//  ItemLibraryView.swift
//  Artwork_Management
//
//  Created by 中川賢亮 on 2022/09/23.
//

import SwiftUI

struct ItemLibraryView: View {
    var body: some View {
        VStack {

            Text("ホーム画面")
                .font(.title)

            Text("(アイテムのコレクションライブラリ)")
                .padding()

        } // VStackここまで
    }
}

struct ItemLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        ItemLibraryView()
    }
}
