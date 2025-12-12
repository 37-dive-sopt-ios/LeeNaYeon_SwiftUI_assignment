//
//  MartView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct MarketView: View {
    private let model = MartModel.dummy()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(74))], spacing: 9) {
                ForEach(0...model.count - 1, id: \.self) { index in
                    FeedCell(image: model[index].image, title: model[index].title)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 11)
        }
        .background(.baeminWhite)
        
    }
}
