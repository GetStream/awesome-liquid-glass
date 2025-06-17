//
//  CustomGlassEffect.swift
//  SwiftUIiOS26

import SwiftUI

struct CustomGlassEffect: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Home Feed \(i)")
            }
            .navigationTitle("Safe Area Inset")
            .listStyle(.inset)
            .safeAreaInset(edge: .bottom) {
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 64))
                    }
                    .glassEffect()
                    .buttonStyle(.borderless)
                    
                    // See the underlying glass effect
                    //.tint(.clear)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Image(.kids)
                        .resizable()
                        .ignoresSafeArea(edges: .all)
                )
            }
        }
    }
}

#Preview {
    CustomGlassEffect()
}
