//
//  LibraryDetail.swift
//  Artwork_Management
//
//  Created by 中川賢亮 on 2022/09/24.
//

import SwiftUI

struct LibraryDetail: View {

    var columns: [GridItem] = Array(repeating: .init(.flexible(),
                                                      spacing: 0), count: 1)

    // アイテムの幅と間隔を指定します。
    let itemWidth: CGFloat
    let itemHeight: CGFloat
    let itemSpase: CGFloat
    let itemNameTag: String

    var body: some View {

        VStack {

            HStack {
                Text(itemNameTag)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.gray)
                    .shadow(radius: 2, x: 2, y: 2)
                    .padding()
                Spacer()
            }

            ScrollView(.horizontal, showsIndicators: false) {

                LazyHGrid(rows: columns, spacing: itemSpase) {

                    ForEach(1...20, id: \.self) {value in

                        // 制作物やジャケットのイメージが入ります。仮で図形を表示させています。
                        RoundedRectangle(cornerSize: .init(width: 10, height: 10))
                            .foregroundColor(Color.gray)
                            .frame(width: itemWidth, height: itemHeight)
                            .shadow(radius: 7, x: 10, y: 6)
                            .overlay(
                                Text("サンプル\(value)")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                            )

                    } // ForEachここまで
                } // LazyHStackここまで
            } // ScrollViewここまで
        }

    } // body
} // View

struct LibraryDetail_Previews: PreviewProvider {
    static var previews: some View {
        LibraryDetail(itemWidth: 220, itemHeight: 220, itemSpase: 40, itemNameTag: "Album")
    }
}
