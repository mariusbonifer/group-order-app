//
//  MainNavigationView.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftUI

struct MainNavigationView: View {
    var body: some View {
        TabView{
            ListOrdersView()
                .tabItem {
                    Label("orders", systemImage: "takeoutbag.and.cup.and.straw.fill")
                }.tag(0)
            SettingsOverview()
                .tabItem {
                    Label("settings", systemImage: "gear")
                }.tag(1)
        }
    }
}

#Preview {
    MainNavigationView()
}
