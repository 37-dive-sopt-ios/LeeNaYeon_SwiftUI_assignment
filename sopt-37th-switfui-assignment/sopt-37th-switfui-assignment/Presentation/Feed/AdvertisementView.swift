//
//  AdvertisementView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct AdvertisementView: View {
    private let model = AdvertisementModel.dummy()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(160))]) {
                ForEach(0...model.count - 1, id: \.self) { index in
                    Image(model[index].image)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: 160
                        )
                }
            }
        }
        .background(.baeminWhite)
    }
}
