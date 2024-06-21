//
//  MenuListRow.swift
//  Menu App
//
//  Created by Lesley Lopez on 6/5/24.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 20)))
            
            Text(item.name)
                .bold()
            
            Spacer()
            Text("$" + item.price)
        }.listRowSeparator(.hidden)
            .listRowBackground(Color(.brown)
                .opacity(0.3))
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "test item", price: "1.99", imageName: "tako-sushi"))
}
