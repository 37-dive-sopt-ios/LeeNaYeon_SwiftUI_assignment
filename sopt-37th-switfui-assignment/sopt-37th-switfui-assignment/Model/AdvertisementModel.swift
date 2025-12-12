//
//  AdvertisementModel.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import Foundation
import SwiftUI

struct AdvertisementModel {
    let image: ImageResource
    
    static func dummy() -> [AdvertisementModel] {
        return [
            AdvertisementModel.init(image: .ad1),
            AdvertisementModel.init(image: .ad2),
            AdvertisementModel.init(image: .ad3),
            AdvertisementModel.init(image: .ad4),
        ]
    }
}
