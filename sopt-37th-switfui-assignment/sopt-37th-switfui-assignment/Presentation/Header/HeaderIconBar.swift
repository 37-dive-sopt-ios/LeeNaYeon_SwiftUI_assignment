//
//  HeaderIconBar.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import SwiftUI

struct HeaderIconBar: View {
    var body: some View {
        HStack {
            HStack {
                Text("우리집")
                    .font(.head_b_16)
                Image(.drop)
            }
            
            Spacer()
            
            Image(.discount)
            Image(.alarm)
            Image(.cart)
        }
        .padding(.horizontal, 20)
    }
}
         
