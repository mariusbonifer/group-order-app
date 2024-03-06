//
//  ListMessage.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//
import SwiftUI

public struct ListMessage: View {
    
    public var title: LocalizedStringKey?
    public var text: LocalizedStringKey?
    public var systemImage: String
    public var alignment: TextAlignment
    public var color: Color
    
    public init(
        title: LocalizedStringKey? = nil,
        text: LocalizedStringKey? = nil,
        systemImage: String = "multiply.circle",
        alignment: TextAlignment  = .leading,
        color: Color? = nil
    ) {
        self.title = title
        self.text = text
        self.systemImage = systemImage
        self.alignment = alignment
        self.color = color ?? Color.blue
    }
    
    public var body: some View {
        VStack(alignment: .center, spacing: 15){
            Image(systemName: systemImage)
                .font(.system(size: 60))
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(color)

            Text(title ?? "")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text(text ?? "")
                .multilineTextAlignment(.center)
                .font(.subheadline)

        }.frame(maxWidth: .infinity)
            .padding(.vertical, 25)
    }
}

#Preview {
    NavigationStack{
        List{
            ListMessage(
                title: "error",
                text: "an_error_occoured",
                systemImage: "exclamationmark.triangle.fill",
                color: Color.accentColor
            )
        }
        .navigationTitle("Form")
    }
}
