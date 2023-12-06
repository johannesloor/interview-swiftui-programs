//
//  RemoteImage.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import Foundation
import SwiftUI

struct RemoteImage: View {
    
    let imageURL: URL?
    
    var body: some View {
        AsyncImage(url: imageURL) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else {
                Color.gray
            }
        }
    }
}

