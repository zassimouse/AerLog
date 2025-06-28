//
//  SheetView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 4.03.25.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Button("Press to dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
            .background(.black)
        }
        .presentationDetents([.height(UIScreen.main.bounds.size.height - 110)])
    }
}

#Preview {
    SheetView()
}
