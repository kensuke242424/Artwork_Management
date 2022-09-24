//
//  ItemDetail.swift
//  Artwork_Management
//
//  Created by 中川賢亮 on 2022/09/24.
//

import SwiftUI

struct ItemDetail: View {

    let screenSize = UIScreen.main.bounds
    let itemName: String

    var body: some View {

        ZStack {

            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(width: screenSize.width - 30,
                       height: screenSize.height - 100)
                .opacity(0.7)

            Text(itemName)
                .font(.title)
                .foregroundColor(.white)
            
        } // ZStack
    } // body
} // View

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(itemName: "サンプル１")
    }
}
