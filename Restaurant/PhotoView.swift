//
//  PhotoView.swift
//  Restaurant
//
//  Created by Lesley Lopez on 6/10/24.
//

import SwiftUI

struct PhotoView: View {
    
    // you need to declare the data type because its going to be a parameter
    @Binding var selectedImageName:String
    @Binding var sheetVisible:Bool
    
    var body: some View {
        
        ZStack{
            
            Image(selectedImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)   
            
            VStack{
                HStack{
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                }
                Spacer()
            }
                        

        }
        
    }
}

#Preview {
    // you can set a fake binding with the following format
    PhotoView(selectedImageName: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
}
