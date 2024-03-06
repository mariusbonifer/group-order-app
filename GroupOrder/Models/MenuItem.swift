//
//  MenuItem.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftData

@Model final internal class MenuItem{
    
    private var name: String
    private var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
}

