//
//  PhotoCat.swift
//  WebCatTest
//
//  Created by 常志平 on 7/9/22.
//

import SwiftUI

struct PhotoCat: View {
    var imageURL = URL(string: "https://cataas.com/cat?type=square")
    
    var body: some View {
        VStack {
            AsyncImage(url: imageURL) {
                phase in switch phase {
                case .empty:
                    ProgressView("Loading cat...")
                    
                case .success(let image):
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 300, maxHeight: 300)
                    
                case .failure:
                    Image(systemName: "shippingbox")
                    
                default:
                    EmptyView()
                }
            }
        }
    }
}

struct PhotoCat_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCat()
    }
}
