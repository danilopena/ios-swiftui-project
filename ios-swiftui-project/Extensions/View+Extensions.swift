//
//  UIView+Extensions.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 25/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
