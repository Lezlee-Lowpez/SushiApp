//
//  GalleryView.swift
//  Restaurant
//
//  Created by Lesley Lopez on 6/5/24.
//

import SwiftUI

struct GalleryView: View {
    
    //if the UI depends on a var then you need to add @State!!!
    
    var dataService = DataService()
    @State var photos:[String] = [String]()
    @State var sheetVisible = false
    @State var selectedImageName = ""
    
    var body: some View {
        
        
            
            VStack(alignment: .leading){
                Text("Gallery")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                GeometryReader(){ proxy in
                    
                    ScrollView{
                        
                        LazyVGrid(columns:[GridItem(spacing: 10), GridItem(spacing: 10), GridItem(spacing:10)], spacing: 10){
                            
                            ForEach(photos, id:\.self){
                                photo in
                                Image(photo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:(proxy.size.width - 20)/3)
                                    .clipped()
                                    .onTapGesture {
                                        selectedImageName = photo
                                        sheetVisible = true
                                    }
                            }
                        }

                    }
                }
            }
            .padding(.horizontal)
            .onAppear{
                photos = dataService.getPhotos()
            }
            .sheet(isPresented: $sheetVisible){
                // When sheet is true show an instance of photoview
                PhotoView(selectedImageName: $selectedImageName, sheetVisible: $sheetVisible)
            }
        
        
        
        
    }
}

#Preview {
    GalleryView()
}
