//
//  LiquidGlassMenu.swift
//  SwiftUIiOS26

import SwiftUI

struct LiquidGlassMenu: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.kid1)
                    //.resizable()
                    //.ignoresSafeArea(.all)
                Text("Liquid Glass Menu")
                    .font(.largeTitle)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Menu {
                                Label("Circle", systemImage: "circle")
                                Label("Triangle", systemImage: "triangle")
                                Label("Square", systemImage: "square")
                                Label("Pentagon", systemImage: "pentagon")
                            } label: {
                                Image(systemName: "ellipsis")
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    LiquidGlassMenu()
        //.preferredColorScheme(.dark)
}
