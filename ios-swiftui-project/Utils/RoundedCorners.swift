//
//  RoundedCorners.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 25/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import SwiftUI

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
