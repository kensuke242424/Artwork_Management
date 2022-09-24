//
//  ItemLibraryView.swift
//  Artwork_Management
//
//  Created by 中川賢亮 on 2022/09/23.
//

import SwiftUI

struct LibraryView: View {

    @State var itemName = ""
    @Binding var isShowItemDetail: Bool

    var body: some View {

        NavigationView {

            ZStack {

                ScrollView(.vertical) {

                    VStack(spacing: 20) {

                        LibraryDetail(itemWidth: 250, itemHeight: 250, itemSpase: 60, itemNameTag: "Album",
                                      isShowItemDetail: $isShowItemDetail)

                        Spacer()

                        LibraryDetail(itemWidth: 150, itemHeight: 150, itemSpase: 40, itemNameTag: "Single",
                                      isShowItemDetail: $isShowItemDetail)

                        LibraryDetail(itemWidth: 250, itemHeight: 200, itemSpase: 40, itemNameTag: "Picture",
                                      isShowItemDetail: $isShowItemDetail)

                        LibraryDetail(itemWidth: 150, itemHeight: 120, itemSpase: 40, itemNameTag: "Goods",
                                      isShowItemDetail: $isShowItemDetail)

                        Spacer()

                    } // VStack
                } // ScrollView
            } // ZStack

            .overlay(
                ItemDetail(itemName: "a")
                    .opacity(isShowItemDetail ? 0.6 : 0)
            )
        } // NavigationView
    } // body
} // View

struct ItemLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(isShowItemDetail: .constant(false))
    }
}
