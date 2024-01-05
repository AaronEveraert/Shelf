//
//  LogInView.swift
//  Shelf
//
//  Created by aaron on 29/12/2023.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        HStack {
            Button( "Sign In" )
            Button( "Register" )
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    LogInView()
}
