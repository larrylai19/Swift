//
//  ImageView.swift
//  GetNetworkImage14
//
//  Created by Larry - 1024 on 2021/12/28.
//

import SwiftUI

struct ImageView: View {
    
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()
    
    init(withURL url: String) {
        imageLoader = ImageLoader(urlString: url)
    }
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200, alignment: .center)
            .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
            }
    }
}
