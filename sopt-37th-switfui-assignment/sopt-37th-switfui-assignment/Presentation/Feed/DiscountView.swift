//
//  DiscountView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct DiscountView: View {
    private let model = RecentDiscountModel.discountDummy()
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 5) {
                        Text("무조건 할인하는 가게")
                            .font(.title_sb_18)
                        Image(.info)
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    
                    Text("2천원 이상 또는 15% 이상 할인중")
                        .font(.body_r_14)
                        .foregroundStyle(.baeminGray300)
                }
                
                Spacer()
                
                Image(.redDiscount)
                    .resizable()
                    .frame(width: 66, height: 59)
                
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
