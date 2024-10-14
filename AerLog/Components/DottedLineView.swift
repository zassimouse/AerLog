//
//  DottedLineView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

struct DottedLineView: View {
    var body: some View {
        HStack {
            // Левая точка
            Circle()
                .fill(Color.white)
                .frame(width: 6, height: 6)
            
            // Пунктирная линия
            DottedLine()
                .stroke(Color.white, style: StrokeStyle(lineWidth: 1, dash: [5, 5]))
                .frame(height: 2)
            
            // Правая точка
            Circle()
                .fill(Color.white)
                .frame(width: 6, height: 6)
        }
        .padding()
    }
}

struct DottedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width, y: rect.midY))
        return path
    }
}

#Preview {
    DottedLineView()
}
