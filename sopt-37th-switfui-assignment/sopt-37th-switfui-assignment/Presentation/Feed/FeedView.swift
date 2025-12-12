//
//  FeedView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

struct FeedView: View {
    @State var selectedTab: FeedType = .delivery
    
    var body: some View {
        VStack {
            FeedTabbar(selectedFeedType: $selectedTab)
                .padding(.bottom, 12)
            
            switch selectedTab {
            case .delivery:
                FeedGridView()
            case .pickup:
                Text("픽업")
            case .shopping:
                Text("장보기 쇼핑")
            case .present:
                Text("선물하기")
            case .etc:
                Text("혜택 모아보기")
            }
        
        }
        .background(.baeminWhite)
    }

}

