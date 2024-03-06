//
//  CreateMenuView.swift
//  GroupOrder
//
//  Created by Marius IHUB on 25.02.24.
//

import SwiftUI

struct CreateMenuView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var menu: Menu = Menu(name: "")
    
    var onFinish: (Menu) -> Void
    
    var body: some View {
        NavigationStack{
            Form{
                MenuDetailView(menu: menu)
            }
            .navigationInlineTitle("create_menu")
            .onDone {
                onFinish(menu)
                dismiss()
            }
            .onCancel {
                dismiss()
            }
        }
    }
}

#Preview {
    NavigationStack{
        
    }.sheet(isPresented: .constant(true), content: {
        CreateMenuView { _ in  }
    })
    
}
