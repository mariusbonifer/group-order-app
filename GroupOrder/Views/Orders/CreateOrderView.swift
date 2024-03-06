//
//  CreateOrderView.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

struct CreateOrderView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var order: Order = Order()
    
    
    var body: some View {
        NavigationStack{
            Form{
                ListMessage(
                    title: "create_order",
                    text: "create_order_text",
                    systemImage:  "plus.square.fill.on.square.fill"
                )
                    .listRowBackground(Color.clear)
                Section("name"){
                    TextField("test", text: $order.name)
                }
                Section{
                    NavigationLink{
                        SelectMenuView()
                    }label: {
                        HStack(spacing: 15){
                            Image(systemName: "menucard")
                                .foregroundStyle(.secondary)
                                .font(.title)
                            if let menu = order.menu  {
                                VStack{
                                    Text(menu.name)
                                }
                            } else {
                                VStack(alignment: .leading){
                                    Text("no_menu_selected")
                                    Text("no_menu_selected_text")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                        .padding(1)
                    }
                } header: {
                    Text("cataloge")
                } footer: {
                    Text("choose_cataloge_text")
                }
                
                PrimaryButton("create_order"){
                    dismiss()
                }
                
            }
            .onDismissSheet {
                dismiss()
            }
        }
    }
}

#Preview {
    NavigationStack{
        
    }.sheet(isPresented: .constant(true), content: {
        CreateOrderView()
    })
    
}
