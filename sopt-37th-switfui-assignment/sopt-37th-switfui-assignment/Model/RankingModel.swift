//
//  RankingModel.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import Foundation
import SwiftUI

struct RankingModel {
    let image: ImageResource
    let title: String
    let menu: String
    let discount: String
    let price: String
    let originalPrice: String
    let star: String
    let reviewCount: String
    
    static func dummy() -> [RankingModel] {
        return [
            RankingModel.init(image: .ganadi1, title: "탕화쿵푸 숙대점", menu: "마라탕+꿔바로우", discount: "20%", price: "12000원", originalPrice: "15000원", star: "5.0", reviewCount: "1,274"),
            RankingModel.init(image: .ganadi2, title: "어바웃샤브", menu: "샤브샤브 1인", discount: "15%", price: "11050원", originalPrice: "13000원", star: "4.8", reviewCount: "591"),
            RankingModel.init(image: .ganadi3, title: "배스트프렌드", menu: "반반 떡볶이", discount: "17%", price: "6640원", originalPrice: "8000원", star: "4.9", reviewCount: "765"),
            RankingModel.init(image: .ganadi4, title: "돈카춘 숙대점", menu: "마제소바", discount: "25%", price: "9000원", originalPrice: "12000원", star: "5.0", reviewCount: "1,004")
        ]
    }
}
