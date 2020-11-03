//
//  ImageView.swift
//  Luna
//
//  Created by Giuseppe Carnà on 03/11/2020.
//

import Foundation
import SwiftUI

struct ImageView: View {
    
    @ObservedObject var imageLoader: ImageLoader
    
    var body: some View {
        ZStack(alignment: .center) {
            if imageLoader.image != nil {
                Image(uiImage: imageLoader.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Rectangle()
                    .foregroundColor(.gray)
            }
        }
    }
    
    init(urlToImage : String?) {
        
        self.imageLoader = ImageCache.shared.loaderFor(urlToImage: urlToImage)
        
    }
    
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(urlToImage: "https://image.cnbcfm.com/api/v1/image/105727716-1549622925337gettyimages-1035615928.jpeg?v=1549622973")
    }
}
