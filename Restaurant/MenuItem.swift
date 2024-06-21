//
//  MenuItem.swift
//  Menu App
//
//  Created by Lesley Lopez on 5/29/24.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    
    var name:String
    var price:String
    var imageName:String
}
