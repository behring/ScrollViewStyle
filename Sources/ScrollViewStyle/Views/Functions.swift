//
//  File.swift
//  
//
//  Created by Joe Maghzal on 8/25/22.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
public extension ScrollView {
    @ViewBuilder func scrollViewStyle<Style: ScrollViewStyle>(_ style: Style) -> some View {
        self.modifier(ScrollViewStyleModifider(style: style))
    }
}

@available(iOS 13.0, *)
extension GeometryProxy: Equatable {
    public static func ==(lhs: GeometryProxy, rhs: GeometryProxy) -> Bool {
        return lhs.size == rhs.size && lhs.safeAreaInsets == rhs.safeAreaInsets && lhs.frame(in: .global) == rhs.frame(in: .global)
    }
}
