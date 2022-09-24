//
//  ItemLibraryView.swift
//  Artwork_Management
//
//  Created by 中川賢亮 on 2022/09/23.
//

import SwiftUI

struct LibraryView: View {

    var body: some View {

        NavigationView {

            ScrollView(.vertical) {

                VStack(spacing: 20) {

                    LibraryDetail(itemWidth: 250, itemHeight: 250, itemSpase: 60, itemNameTag: "Album")

                    Spacer()

                    LibraryDetail(itemWidth: 150, itemHeight: 150, itemSpase: 40, itemNameTag: "Single")

                    LibraryDetail(itemWidth: 250, itemHeight: 200, itemSpase: 40, itemNameTag: "Picture")

                    LibraryDetail(itemWidth: 150, itemHeight: 120, itemSpase: 40, itemNameTag: "Goods")


                } // VStack
            } // ScrollView
        } // NavigationView
    } // body
} // View

struct ItemLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
