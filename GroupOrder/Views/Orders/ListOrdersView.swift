//
//  ListOrdersView.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

struct ListOrdersView: View {
    
    @State private var showAddOrder: Bool = false
    private var orders: [Order] = []
    
    var body: some View {
        NavigationStack{
            List{
                if orders.isEmpty{
                    ListMessage(title: "no_orders", text: "no_orders_text", systemImage: "takeoutbag.and.cup.and.straw.fill")
                        .listRowBackground(Color.clear)
                }
            }
            .navigationTitle("orders")
            .onAdd {
                showAddOrder.toggle()
            }
            .sheet(isPresented: $showAddOrder, content: {
                CreateOrderView()
            })
            
        }
    }
}

#Preview {
    ListOrdersView()
}
