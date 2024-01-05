//
//  UrlGridView.swift
//  Shelf
//
//  Created by aaron on 04/01/2024.
//

import SwiftUI

struct UrlGridView: View {
    
     private let data: [Int] = Array(1...20)
      
       
       // Flexible, custom amount of columns that fill the remaining space
       private let numberColumns = [
           GridItem(.flexible()),
           GridItem(.flexible())
       ]
       
       // Adaptive, make surhge it's the size of your smallest element.
       private let adaptiveColumns = [
           GridItem(.adaptive(minimum: 170))
       ]
       
       // Fixed, creates columns with fixed dimensions
       private let fixedColumns = [
           GridItem(.fixed(200)),
           GridItem(.fixed(200))
       ]
       
       var body: some View {
           ZStack {
               
               
             
               
               
               NavigationView {
                   
                   ScrollView {
                       LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                           ForEach(urls) { url in
                               ZStack {
                                   
                                   Rectangle()
                                       .frame(width: 170, height: 170)
                                       .cornerRadius(30)
                                       .foregroundColor(Color(#colorLiteral(red: 0.1098039216, green: 0.1098039216, blue: 0.1176470588, alpha: 1)))
                                   Text("\(url.name)")
                                       
                                       
                                       .font(.largeTitle)
                                           .scaledToFit()
                                           .minimumScaleFactor(0.1)
                                           .lineLimit(1)
                                           .padding()
                               }
                           }
                       }
                   }
                   .navigationTitle("Sample Grids")
                   .padding()
                   
               }
           }
       }
}

#Preview {
    UrlGridView()
}
