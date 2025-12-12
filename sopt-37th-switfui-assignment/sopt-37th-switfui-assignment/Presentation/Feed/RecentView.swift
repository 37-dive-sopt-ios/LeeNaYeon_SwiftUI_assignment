//
//  RecentView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct RecentView: View {
    private let model = RecentDiscountModel.recentDummy()
    
    var body: some View {
        VStack {
            HStack {
                HStack(spacing: 5) {
                    Text("최근에 주문했어요")
                        .font(.title_sb_18)
                    Image(.info)
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                
                Spacer()
                
                HStack(spacing: 4) {
                    Text("전체보기")
                        .font(.body_r_14)
                    Image(.chevronRight)
                        .resizable()
                        .frame(width: 12, height: 12)
                }
            }
            .padding(.top, 20)
            .padding(.horizontal, 16)
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(216))], spacing: 10) {
                    ForEach(0...model.count - 1, id: \.self) { index in
                        RecentDiscountCell(data: model[index])
                    }
                }
            }
            .padding(.bottom, 20)
            .padding(.horizontal, 16)
        }
        .background(.baeminWhite)
    }
}
