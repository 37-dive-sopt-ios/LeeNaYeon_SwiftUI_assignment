//
//  FeedModel.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/11/25.
//

import Foundation
import SwiftUI

struct FeedModel {
    let image: ImageResource
    let title: String
    
    static func dummy() -> [FeedModel] {
        return [
            FeedModel.init(image: .ganadi1, title: "한그릇"),
            FeedModel.init(image: .ganadi2, title: "치킨"),
            FeedModel.init(image: .ganadi3, title: "카페·디저트"),
            FeedModel.init(image: .ganadi4, title: "피자"),
            FeedModel.init(image: .ganadi5, title: "분식"),
            FeedModel.init(image: .ganadi1, title: "고기"),
            FeedModel.init(image: .ganadi2, title: "찜·탕"),
            FeedModel.init(image: .ganadi3, title: "야식"),
            FeedModel.init(image: .ganadi4, title: "패스트푸드"),
            FeedModel.init(image: .ganadi5, title: "픽업")
        ]
    }
}
