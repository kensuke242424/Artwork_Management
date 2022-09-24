//
//  ItemDetail.swift
//  Artwork_Management
//
//  Created by 中川賢亮 on 2022/09/24.
//

import SwiftUI

struct ItemShowDetail: View {

    let screenSize = UIScreen.main.bounds
    let itemName: String

    var body: some View {

        ZStack {

            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(width: screenSize.width - 30,
                       height: screenSize.height - 100)
                .opacity(0.7)

                .overlay(alignment: .top) {
                    Text(itemName)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .offset(y: 50)
                }

                .overlay(alignment: .top) {
                    Image("neko2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .offset(y: 100)
                }

                .overlay (
                    Text("アイテムの詳細説明")
                        .foregroundColor(.white)
                )

            VStack {





            }



            
        } // ZStack
    } // body
} // View

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemShowDetail(itemName: "サンプル１")
    }
}
