//
//  ContentView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/10/25.
//

import SwiftUI

struct BaeminMainView: View {
    var body: some View {
        ZStack {
            ScrollView {
                HeaderIconBar()
                LazyVStack(pinnedViews: [.sectionHeaders]) {
                    Section(header: SearchBar()) {
                        GradientView()
                        FeedView()
                        MarketView()
                        AdvertisementView()
                        RankingView()
                        RecentView()
                        DiscountView()
                    }
                }
            }
            .padding(.top, 10)
        }
        .background(.backgroundWhite)
    }
}
