//
//  RecentDiscountModel.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import Foundation
import SwiftUI

struct RecentDiscountModel{
    let image: ImageResource
    let orderCount: Int?
    let title: String
    let star: String
    let time: String
    let reviewCount: String?
    let isBaeminClub: Bool
    let isPickUp: Bool
    let isReservation: Bool
    let isCoupon: Bool
    let isClean: Bool
    
    static func recentDummy() -> [RecentDiscountModel] {
        return [
            RecentDiscountModel.init(image: .ad1, orderCount: 1, title: "노모어피자 숙대점", star: "4.8", time: "31분~45분", reviewCount: nil,
                                     isBaeminClub: true, isPickUp: true, isReservation: false, isCoupon: false, isClean: false),
            RecentDiscountModel.init(image: .ad2, orderCount: 2, title: "먼데이피크닉", star: "5.0", time: "20분~30분", reviewCount: nil,
                                     isBaeminClub: true, isPickUp: true, isReservation: true, isCoupon: false, isClean: false),
            RecentDiscountModel.init(image: .ad3, orderCount: 1, title: "홍곱창 숙대점", star: "5.0", time: "50분~55분", reviewCount: nil,
                                     isBaeminClub: true, isPickUp: true, isReservation: true, isCoupon: false, isClean: false),
            RecentDiscountModel.init(image: .ad4, orderCount: 3, title: "바론김밥", star: "4.7", time: "30분~40분", reviewCount: nil,
                                     isBaeminClub: true, isPickUp: true, isReservation: false, isCoupon: false, isClean: false)
        ]
    }
    
    static func discountDummy() -> [RecentDiscountModel] {
        return [
            RecentDiscountModel.init(image: .ad4, orderCount: nil, title: "네코노스시", star: "4.8", time: "31분~45분", reviewCount: "145",
                                     isBaeminClub: true, isPickUp: true, isReservation: true, isCoupon: false, isClean: false),
            RecentDiscountModel.init(image: .ad3, orderCount: nil, title: "만나칼국수", star: "5.0", time: "20분~30분", reviewCount: "219",
                                     isBaeminClub: true, isPickUp: true, isReservation: true, isCoupon: true, isClean: true),
            RecentDiscountModel.init(image: .ad2, orderCount: nil, title: "또와또", star: "5.0", time: "50분~55분", reviewCount: "590",
                                     isBaeminClub: true, isPickUp: true, isReservation: false, isCoupon: true, isClean: false),
            RecentDiscountModel.init(image: .ad1, orderCount: nil, title: "굴다리포차", star: "4.7", time: "30분~40분", reviewCount: "1,342",
                                     isBaeminClub: true, isPickUp: true, isReservation: true, isCoupon: false, isClean: false)
        ]
    }
}
