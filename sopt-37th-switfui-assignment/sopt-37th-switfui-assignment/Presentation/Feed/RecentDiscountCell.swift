//
//  RecentAndDiscountCell.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct RecentDiscountCell: View {
    let data: RecentDiscountModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(data.image)
                .resizable()
                .frame(width: 188, height: 126)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 7) {
                if let orderCount = data.orderCount {
                    HStack(spacing: 2) {
                        Image(.time)
                            .resizable()
                            .frame(width: 10, height: 10)
                        
                        Text("최근 \(orderCount)번 주문한 가게")
                            .font(.body_r_12)
                            .foregroundStyle(.baeminBlue)
                    }
                }
                
                HStack {
                    Text("\(data.title)")
                    Spacer()
                    HStack (spacing: 2) {
                        Image(.star)
                            .frame(width: 11, height: 10)
                        Text("\(data.star)")
                        
                        if let review = data.reviewCount {
                            Text("(\(review))")
                                .font(.body_r_14)
                                .foregroundStyle(.baeminGray600)
                        }
                    }
                }
                .font(.head_b_14)
                
                
                HStack(spacing: 6) {
                    HStack(spacing: 2) {
                        Image(.money)
                            .resizable()
                            .frame(width: 13, height: 13)
                        
                        Text("\(data.time)")
                            .font(.body_r_13)
                    }
                    
                    Image(.freedelivery)
                        .resizable()
                        .frame(width: 56, height: 13)
                }
                
                let badges = [
                    data.isBaeminClub ? Image(.badge) : nil,
                    data.isPickUp ? Image(.pickBadge) : nil,
                    data.isReservation ? Image(.rebadge) : nil,
                    data.isCoupon ? Image(.couponBadge) : nil,
                    data.isClean ? Image(.cleanBadge) : nil
                ] .compactMap { $0 }
                
                let columns = Array(repeating: GridItem(.flexible(), spacing: 4), count: 3)
                
                LazyVGrid(columns: columns, alignment: .leading, spacing: 6) {
                    ForEach(badges.indices, id: \.self) { i in
                        badges[i]
                            .resizable()
                            .frame(width: badges[i] == Image(.badge) ? 56 : 44)
                    }
                }
                .frame(width: 160)
                .frame(minHeight: 16, maxHeight: 38)
            }
        }
        .frame(width: 188, height: 220)
    }
}
