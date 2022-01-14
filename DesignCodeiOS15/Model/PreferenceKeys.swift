//
//  PreferenceKeys.swift
//  DesignCodeiOS15
//
//  Created by Rogelio Torres on 13/01/22.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat){
        value = nextValue()
    }
}
