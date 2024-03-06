//
//  OrderIte.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

final internal class OrderItem{
    
    public let amount: Int
    public let item: MenuItem
    
    init(amount: Int, item: MenuItem) {
        self.amount = amount
        self.item = item
    }

    
}
