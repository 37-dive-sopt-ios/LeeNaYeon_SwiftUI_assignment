//
//  BaeminTabbar.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

struct BaeminTabbar: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .baeminGray700
    }
    
    var body: some View {
        TabView {
            BaeminMainView()
                .tabItem {
                    Image(.home)
                        .renderingMode(.template)
                    Text("홈")
                }
            
            Text("장보기·쇼핑")
                .tabItem {
                    Image(.order)
                        .renderingMode(.template)
                    Text("장보기·쇼핑")
                }
            
            Text("찜")
                .tabItem {
                    Image(.heart)
                        .renderingMode(.template)
                    Text("찜")
                }
            
            Text("주문내역")
                .tabItem {
                    Image(.order)
                        .renderingMode(.template)
                    Text("주문내역")
                }
            
            Text("마이배민")
                .tabItem {
                    Image(.face)
                        .renderingMode(.template)
                    Text("마이배민")
                }
        }
        .font(.title_sb_10)
        .accentColor(.baeminBlack)
    }
}
