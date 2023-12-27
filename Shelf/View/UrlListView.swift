//
//  UrlList.swift
//  Shelf
//
//  Created by aaron on 27/12/2023.
//

import SwiftUI

struct UrlList: View {
    var body: some View {
        NavigationSplitView {
            List(urls) { url in
                NavigationLink {
                        DetailUrlView(url: url)
                    } label: {
                        UrlRowView(url: url)
                    }
            }.navigationTitle("Url's")
        } detail: {
            Text("Select a url ")
        }
    }

}

#Preview {
    UrlList()
}
