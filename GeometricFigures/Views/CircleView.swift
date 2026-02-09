//
//  CircleView.swift
//  GeometricFigures
//
//  Created by Yahiro Teraoka on 2026-02-09.
//

import SwiftUI

struct CircleView: View {
    
    @State var currentCircle = Circle(radius: 10)
    
    var body: some View {
        VStack {
            // TODO: Add image later
         
            // Label for the slider
            Text("Radius")
            
            // Slider for radius input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            // Label showing the current slider value
            Text("Radius is \(currentCircle.radius.formatted())")
            
            //Labels showing other information about the circle
            Text("Diameter is \(currentCircle.diameter.formatted())")
            Text("Area is \(currentCircle.area.formatted())")
            Text("Circumference is \(currentCircle.circumference.formatted())")
        }
    }
}

#Preview {
    CircleView()
}
