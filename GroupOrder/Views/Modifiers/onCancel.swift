//
//  onCancel.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

internal struct OnCancelModifier: ViewModifier{
    
    let action: ()->Void
    
    func body(content: Content) -> some View {
        content
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("cancel", action: action)
                }
            }
    }
}

public extension View{
    func onCancel(_ perform: @escaping ()->Void) -> some View{
        self.modifier(OnCancelModifier(action: perform))
    }
}

