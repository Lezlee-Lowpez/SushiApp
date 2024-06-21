//
//  MenuView.swift
//  Restaurant
//
//  Created by Lesley Lopez on 6/5/24.
//

import SwiftUI

struct MenuView: View {
    // this is a property wrapper - indicates that the UI depends on the state of this property
    @State var items:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    
    var body: some View {
       
        List(items){ item in
          MenuListRow(item: item)
            
        }.listStyle(.plain)
        //As soon as the list is shown we add the modifier on appear to call the data
            .onAppear {
                //call the data
                items = dataService.getData()
            }
        
        
    }
}

#Preview {
    MenuView()
}
