//
//  Item.swift
//  GroupOrder
//
//  Created by Marius IHUB on 24.02.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
