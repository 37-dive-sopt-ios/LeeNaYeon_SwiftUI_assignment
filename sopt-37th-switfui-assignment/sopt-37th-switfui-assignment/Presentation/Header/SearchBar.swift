//
//  SearchBar.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        ZStack{
            ZStack {
                HStack {
                    Text("찾아라! 맛있는 음식과 맛집")
                        .font(.body_r_14)
                        .foregroundStyle(.baeminGray300)
                    
                    Spacer()
                    
                    Image(.search)
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                .padding(.horizontal, 17)
            }
            .frame(height: 40)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.baeminWhite)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.baeminBlack, lineWidth: 1)
            )
            .padding(.horizontal, 16)
        }
        .background(.backgroundWhite)
    }
}
