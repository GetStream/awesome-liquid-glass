//
//  LiquidGlassHContainer.swift
//  SwiftUIiOS26
//

import SwiftUI

struct LiquidGlassHContainer: View {
    var body: some View {
        ZStack {
            Image(.kid1)
                .resizable()
                .ignoresSafeArea(edges: .all)
                .scaleEffect(2)
                .phaseAnimator([false, true]) { bgImage, move in
                    bgImage
                        .offset(y: move ? -320 : 320)
                } animation: { move in
                        .easeInOut(duration: 5)
                }
            
            VStack {
                HStack {
                    Image(systemName: "chevron.backward")
                    Spacer()
                    Image(systemName: "plus")
                    Spacer()
                    Image(systemName: "circle")
                }
                .padding(32)
                .font(.largeTitle)
                .glassEffect()
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LiquidGlassHContainer()
        //.preferredColorScheme(.dark)
}
