//
//  RankingView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct RankingView: View {
    private let model = RankingModel.dummy()
    
    var body: some View {
        
        VStack {
            HStack {
                HStack(spacing: 3) {
                    Text("우리 동네 한그릇 인기 랭킹")
                        .font(.title_sb_18)
                        .foregroundStyle(.baeminWhite)
                    
                    Image(.infowhite)
                        .resizable()
                        .tint(.baeminWhite)
                        .frame(width: 16, height: 16)
                }
                
                Spacer()
                
                HStack(spacing: 4) {
                    Text("전체보기")
                        .font(.body_r_14)
                        .foregroundStyle(.baeminWhite)
                    
                    Image(.rightWhite)
                        .resizable()
                        .tint(.baeminWhite)
                        .frame(width: 12, height: 12)
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 18)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(145))], spacing: 16) {
                    ForEach(0...model.count - 1, id: \.self) { index in
                        RankingCell(data: model[index])
                    }
                }
            }
            .padding(.horizontal, 16)
        }
        .padding(.top, 24)
        .padding(.bottom, 20)
        .background( LinearGradient(gradient: Gradient(colors: [.baeminGradientPurple, .baeminWhite]), startPoint: .top, endPoint: .center))
    }
       
    
}
