//
//  ContentView.swift
//  HelloImagePicker
//
//  Created by Larry - 1024 on 2021/12/7.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowPicker = false
    @State var image : Image? = Image("placeholder")
    @State var isSourceTypeAlbum = true
    
    var body: some View {
        VStack {
            Text("匯入照片")
            
            image?
                .resizable()
                .scaledToFit()
                .frame(height: 320)
            
            HStack {
                Button(action: {
                    withAnimation {
                        self.isShowPicker.toggle()
                        self.isSourceTypeAlbum = true
                    }
                }, label: {
                    Image(systemName: "photo")
                    Text("開啟相簿")
                        .font(.headline)
                })
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        self.isShowPicker.toggle()
                        self.isSourceTypeAlbum = false
                    }
                }, label: {
                    Image(systemName: "camera")
                    Text("開啟相機")
                        .font(.headline)
                })
            }.padding(.horizontal, 50)
            
            Spacer()
        }
        
        .sheet(isPresented: $isShowPicker) {
            ImagePicker(image: self.$image, isSourceTypeAlbum: self.$isSourceTypeAlbum)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
