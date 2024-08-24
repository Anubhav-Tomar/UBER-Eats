//
//  OffsetKey.swift
//  UBER-Eats
//
//  Created by Anubhav Tomar on 24/08/24.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
    
    static var defaultValue: CGRect = .zero
}
