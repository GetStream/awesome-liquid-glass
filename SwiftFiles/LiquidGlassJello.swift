//
//  LiquidGlassJello.swift
//  SwiftUIiOS26

import SwiftUI

struct SliderControls: View {
    var label: String
    @State private var value = 3.0
    @State private var selected = 1
    var body: some View {
        HStack {
            Text(label + ":")
            Picker("Selection", selection: $selected) {
                Text("option 1").tag(1)
                Text("option 2").tag(2)
                Text("option 3").tag(3)
            }
            Slider(value: $value, in: 1...10)
            Button("OK") { }
        }
        .padding()
    }
}

struct  LiquidGlassJello: View {
    var body: some View {
        ZStack {
            Image(.kids)
                .resizable()
                .ignoresSafeArea(edges: .all)
            
            VStack {
                MyControls(label: "Mini")
                    .controlSize(.mini)
                MyControls(label: "Small")
                    .controlSize(.small)
                MyControls(label: "Regular")
                    .controlSize(.regular)
            }
            .padding()
        }
    }
}

#Preview {
    LiquidGlassJello()
}
