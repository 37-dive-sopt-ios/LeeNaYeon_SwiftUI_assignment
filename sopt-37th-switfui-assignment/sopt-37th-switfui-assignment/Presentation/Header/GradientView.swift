//
//  GradientView.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            LinearGradient(gradient: Gradient(colors: [.backgroundWhite, .gradientMint]), startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading, spacing: 6) {
                Image(.bmart)
                    .frame(height: 18)
                HStack(spacing: 2){
                    Text("전상품 쿠폰팩 + 60%특가")
                        .font(.head_b_16)
                    Image(.chevronRight)
                    
                }
            }
            .padding(.horizontal, 16)
            .padding(.trailing, 27)
        }
        .frame(height: 77)
    }
}

#Preview {
    GradientView()
}
