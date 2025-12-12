//
//  String+.swift
//  sopt-37th-switfui-assignment
//
//  Created by 이나연 on 12/12/25.
//

import SwiftUI

extension String {
    func highlight(_ target: String, font: Font) -> AttributedString {
        var attributed = AttributedString(self)
        
        if let range = attributed.range(of: target) {
            attributed[range].font = font
        }
        
        return attributed
    }
}
