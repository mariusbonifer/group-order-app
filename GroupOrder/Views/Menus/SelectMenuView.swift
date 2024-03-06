//
//  SelectMenuView.swift
//  GroupOrder
//
//  Created by Marius IHUB on 25.02.24.
//

import SwiftUI
import SwiftData

struct SelectMenuView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Menu.name) var menus: [Menu]
    @State private var showCreationSheet: Bool = false
    
    var body: some View {
        List{
            if menus.isEmpty {
                ListMessage(title: "no_menus_yet", text: "no_menus_yet_text", systemImage: "list.bullet")
                    .listRowBackground(Color.clear)
            }
            ForEach(menus, id: \.id) {menu in
                HStack(spacing: 15){
                    Image(systemName: "menucard")
                        .foregroundStyle(.secondary)
                        .font(.title2)
                    VStack(alignment: .leading){
                        Text(menu.name)
                        Text("\(menu.items.count) entries")
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                    }
                }
            }
        }
        .navigationInlineTitle("select_menu")
        .onAdd {
            showCreationSheet.toggle()
        }
        .sheet(isPresented: $showCreationSheet, content: {
            CreateMenuView{ menu in
                modelContext.insert(menu)
            }
        })
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Menu.self, configurations: config)

     for i in 1..<10 {
         let menu = Menu(name: "Test-Menü \(i)")
         container.mainContext.insert(menu)
     }

    
    return NavigationStack{
        SelectMenuView()
            .modelContainer(container)
    }
}
