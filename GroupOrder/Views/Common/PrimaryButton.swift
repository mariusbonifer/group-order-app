//
//  ListMessage.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//
import SwiftUI

public struct PrimaryButton: View {
    
    private var action: () -> ()
    private var text : LocalizedStringKey
    
    public init(_ text: LocalizedStringKey = "save", action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    public init(_ text: String, action: @escaping () -> Void) {
        self.text = LocalizedStringKey(text)
        self.action = action
    }

    
    public var body: some View {
        Section {
            Button(action: action) {
                Text(text)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .listRowInsets(EdgeInsets())
        }
        .listRowSeparatorTint(Color.clear)
        .listRowBackground(Color.clear)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PrimaryButton{}
    .padding()
}
