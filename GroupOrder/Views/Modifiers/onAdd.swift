//
//  onAdd.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

internal struct OnAddViewModifier: ViewModifier{
    let action: ()->Void
    
    func body(content: Content) -> some View {
        content
            .toolbar{
                Button("add", systemImage: "plus", action: action)
            }
    }
}

public extension View{
    func onAdd(_ perform: @escaping ()->Void) -> some View{
        self.modifier(OnAddViewModifier(action: perform))
    }
}
