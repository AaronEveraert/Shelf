//
//  DetailUrlView.swift
//  Shelf
//
//  Created by aaron on 28/12/2023.
//

import SwiftUI

struct DetailUrlView: View {
    var url : Url
    
    var body: some View {
        VStack {
            
            
            
            VStack(alignment: .leading) {
                Text(url.name)
                    .font(.title)
                
                
                HStack {
                    Text(url.url)
                    Spacer()
                    Text(url.group)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                
                Divider()
                
                
                Text("About " + url.name)
                    .font(.title2)
                Text(url.description)
            }
            .padding()
            
            
            Spacer()
        }
        .navigationTitle(url.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailUrlView( url: urls[0] )
}
