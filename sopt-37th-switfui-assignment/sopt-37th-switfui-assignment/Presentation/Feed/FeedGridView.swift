//
//  FeedGridView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

struct FeedGridView: View {
    
    private let model =  FeedModel.dummy()
    
    var body: some View {
        Grid(horizontalSpacing: 8, verticalSpacing: 12) {
            GridRow {
                ForEach(0...4, id: \.self) { index in
                    FeedCell(image: model[index].image, title: model[index].title)
                }
            }

            
            GridRow {
                ForEach(5...model.count-1, id: \.self) { index in
                    FeedCell(image: model[index].image, title: model[index].title)
                }
            }
        }
        .padding(.horizontal, 16)
        
        Rectangle()
            .fill(.baeminGray300)
            .frame(height: 1)
            .padding(.top, 21)
        
        HStack(spacing: 4) {
            let text = "음식배달에서 더보기"
            Text(text.highlight("음식배달", font: .head_b_14))
                .font(.body_r_14)
            
            Image(.chevronRight)
        }
        .padding(.vertical, 10)
    }
}
