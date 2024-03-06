//
//  navigationInlineTitle.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

internal struct NavigationInlineTitleViewModifier: ViewModifier{
    var title: LocalizedStringKey
    
    func body(content: Content) -> some View {
        content
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

public extension View{
    func navigationInlineTitle(_ title: LocalizedStringKey) -> some View {
        self.modifier(NavigationInlineTitleViewModifier(title: title))
    }
}
