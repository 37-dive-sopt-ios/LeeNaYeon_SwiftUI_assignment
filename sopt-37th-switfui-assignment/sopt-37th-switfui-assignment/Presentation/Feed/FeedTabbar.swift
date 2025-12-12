//
//  FeedTabbar.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

enum FeedType: String {
    case delivery = "음식배달"
    case pickup = "픽업"
    case shopping = "장보기·쇼핑"
    case present = "선물하기"
    case etc = "혜택모아보기"
}

struct FeedTabbar: View {
    @Binding var selectedFeedType: FeedType
    
    private let tabs: [FeedType] = [.delivery, .pickup, .shopping, .present, .etc]
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Button {
                                selectedFeedType = tab
                            } label : {
                                Text(tab.rawValue)
                                    .font(.head_b_18)
                                    .foregroundStyle(selectedFeedType == tab ? .baeminBlack : .baeminGray300)
                            }
                            
                            Rectangle()
                                .fill(selectedFeedType == tab ? .baeminBlack : Color.clear)
                                .frame(height: 3)
                        }
                    }
                }
                .padding(.top, 16)
                .padding(.horizontal, 16)
                
                Rectangle()
                    .fill(.baeminGray300)
                    .frame(height: 1)
                    .padding(.top, 3)
            }
        }
        .frame(height: 48)
    }
}
