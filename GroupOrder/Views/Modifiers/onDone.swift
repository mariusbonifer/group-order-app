//
//  onDone.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

internal struct OnDoneModifier: ViewModifier{
    
    let action: ()->Void
    
    func body(content: Content) -> some View {
        content
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("done", action: action)
                }
            }
    }
}

public extension View{
    func onDone(_ perform: @escaping ()->Void) -> some View{
        self.modifier(OnDoneModifier(action: perform))
    }
}

