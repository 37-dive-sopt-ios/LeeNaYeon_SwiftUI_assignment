//
//  FeedCell.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

struct FeedCell: View {
    let image: ImageResource
    let title: String
    
    var body: some View {
        VStack(spacing: 6) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 58, height: 58)
                .background(.backgroundWhite)
                .cornerRadius(20)
            
            Text("\(title)")
                .font(.body_r_14)
        }
    }
}
