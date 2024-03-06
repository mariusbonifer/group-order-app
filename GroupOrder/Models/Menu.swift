//
//  Menu.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftData


@Model final internal class Menu{
 
    @Relationship public var items: [MenuItem]
    public var name: String
    
    init(name: String, items: [MenuItem] = []) {
        self.name = name
        self.items = items
    }
}
