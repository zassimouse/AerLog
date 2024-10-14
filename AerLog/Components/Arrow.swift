//
//  Arrow.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI

struct ArrowLineView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                // Dynamic line that fills the remaining space
                Line()
                    .stroke(Color.white, lineWidth: 2)
                    .frame(width: geometry.size.width - 30, height: 2) // Adjust the width to leave space for the arrow
                
                // Constant arrow size
                ArrowHead()
                    .fill(Color.white)
                    .frame(width: 20, height: 10) // Constant arrowhead size
            }
            .frame(width: 200)
            .padding()
        }
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width, y: rect.midY))
        return path
    }
}

struct ArrowHead: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let arrowTip = CGPoint(x: rect.maxX, y: rect.midY)
        let bottom = CGPoint(x: rect.minX, y: rect.maxY)
        let top = CGPoint(x: rect.minX, y: rect.minY)
        
        path.move(to: arrowTip)   // Start at arrow tip
        path.addLine(to: bottom)  // Draw line to bottom of the arrowhead
        path.addLine(to: top)     // Draw line to top of the arrowhead
        path.addLine(to: arrowTip)// Close the path
        
        return path
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowLineView()
    }
}
