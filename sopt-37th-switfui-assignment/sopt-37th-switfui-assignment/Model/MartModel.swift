//
//  MartModel.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import Foundation
import SwiftUI

struct MartModel {
    let image: ImageResource
    let title: String
    
    static func dummy() -> [MartModel] {
        return [
            MartModel.init(image: .ganadi1, title: "B마트"),
            MartModel.init(image: .ganadi2, title: "CU"),
            MartModel.init(image: .ganadi3, title: "이마트슈퍼"),
            MartModel.init(image: .ganadi4, title: "홈플러스"),
            MartModel.init(image: .ganadi5, title: "GS25"),
            MartModel.init(image: .ganadi1, title: "이마트24")
        ]
    }
}
