//
//  Order.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import SwiftData
import Foundation

@Model final class Order{
    
    //public var items: [MenuItem]
    public var name: String
    @Relationship public var menu: Menu?
    
    init(name: String? = nil, menu: Menu? = nil) {
        self.name = name ?? Order.generateDefaultName()
        self.menu = menu
    }
    
    private static func generateDefaultName() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none

        let currentDate = Date()
        let localizedDateString = dateFormatter.string(from: currentDate)
        
        let order = NSLocalizedString("order", comment: "")
        return "\(order) \(localizedDateString)"
    }
}
