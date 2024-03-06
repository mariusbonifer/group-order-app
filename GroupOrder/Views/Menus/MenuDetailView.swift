//
//  MenuDetailView.swift
//  GroupOrder
//
//  Created by Marius IHUB on 25.02.24.
//

import SwiftUI

struct MenuDetailView: View {
    
    @Bindable var menu: Menu
    
    var body: some View {
        Section("name"){
            TextField("name", text: $menu.name)
        }
    }
}

#Preview {
    let testMenu: Menu = Menu(name: "test")
    return NavigationStack{
        Form{
            MenuDetailView(menu: testMenu)
        }
        .navigationInlineTitle("preview")
    }
}
