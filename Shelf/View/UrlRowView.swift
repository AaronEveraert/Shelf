//
//  UrlRowView.swift
//  Shelf
//
//  Created by aaron on 27/12/2023.
//

import SwiftUI



struct UrlRowView: View {
    var url: Url
    
    
    var body: some View {
        
        HStack{
            
            Text(url.name)
            Spacer()
        }
        
    }
}

#Preview {
    UrlRowView(url: urls[0])
}

#Preview {
    UrlRowView(url: urls[1])
}
