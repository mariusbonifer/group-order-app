//
//  onDismissSheet.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

internal struct OnDismissSheetModifier: ViewModifier{
    
    let action: ()->Void
    
    func body(content: Content) -> some View {
        content
            .toolbar{
                Button{
                    action()
                }label: {
                    Image(systemName: "xmark.circle.fill")
                        .symbolRenderingMode(.hierarchical)
                        .foregroundStyle(.secondary)
                        .font(.title2)
                }
                .buttonStyle(.plain)
                 
            }
    }
}

public extension View{
    func onDismissSheet(_ perform: @escaping ()->Void) -> some View{
        self.modifier(OnDismissSheetModifier(action: perform))
    }
}

