//
//  RankingCell.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct RankingCell: View {
    let data: RankingModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 9) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.backgroundWhite)
                
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    
            }
            .frame(width: 145, height: 145)
            .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 5) {
                    Text("\(data.title)")
                    
                    Spacer()
                    
                    HStack {
                        Image(.star)
                            .frame(width: 11, height: 10)
                        
                        Text("\(data.star)")
                    }
                    
                    Text("(\(data.reviewCount))")
                }
                .font(.body_r_12)
                .foregroundStyle(.baeminGray600)
                
                Text("\(data.menu)")
                    .font(.body_r_14)
                
                HStack {
                    Text("\(data.discount)")
                        .foregroundStyle(.baeminRed)
                    
                    Text("\(data.price)")
                } .font(.head_b_14)
                
                Text("\(data.originalPrice)")
                    .font(.body_r_12)
                    .foregroundStyle(.baeminGray600)
                    .strikethrough()
                
                Text("최소주문금액없음")
                    .font(.head_b_13)
                    .foregroundStyle(.baeminPurple)
            }
        } .frame(width: 145)
    }
}
