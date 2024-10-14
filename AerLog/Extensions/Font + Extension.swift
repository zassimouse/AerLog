//
//  Font + Extension.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import Foundation
import SwiftUI

enum FontWeight {
    case light
    case regular
    case medium
    case semiBold
    case bold
    case black
}

extension Font {
    static let customFont: (FontWeight, CGFloat) -> Font = { fontType, size in
        switch fontType {
        case .light:
            Font.custom("NeueAlteGrotesk-Light", size: size)
        case .regular:
            Font.custom("NeueAlteGrotesk-Regular", size: size)
        case .medium:
            Font.custom("NeueAlteGrotesk-Medium", size: size)
        case .semiBold:
            Font.custom("NeueAlteGrotesk-SemiBold", size: size)
        case .bold:
            Font.custom("NeueAlteGrotesk-Bold", size: size)
        case .black:
            Font.custom("NeueAlteGrotesk-Black", size: size)
        }
    }
}

extension Text {
    func customFont(_ fontWeight: FontWeight? = .regular, _ size: CGFloat? = nil) -> Text {
        return self.font(.customFont(fontWeight ?? .regular, size ?? 16))
    }
}

