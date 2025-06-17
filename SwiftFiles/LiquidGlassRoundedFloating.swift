//
//  LiquidGlassRoundedFloating.swift
//  SwiftUIiOS26
//
//  Liquid Glass: Intersection with surfaces
//

import SwiftUI

struct LiquidGlassRoundedFloating: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.kids)
                    .resizable()
                    .ignoresSafeArea(edges: .all)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        HStack {
                            Image(systemName: "trash")
                            Spacer()
                            Image(systemName: "folder")
                            Spacer()
                            Image(systemName: "arrowshape.turn.up.left")
                        }
                        .zIndex(1)
                        .padding(16)
                        .font(.largeTitle)
                        .glassEffect()
                       
                        Button {
                            //
                        } label: {
                            Image(systemName: "bubble.and.pencil")
                                .padding(8)
                                .font(.title)
                        }
                        .buttonStyle(.glass)
                        .phaseAnimator([false, true]) { bgImage, move in
                            bgImage
                                .offset(x: move ? -84 : 0)
                        } animation: { move in
                                .easeInOut(duration: 6)
                        }
                       
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    LiquidGlassRoundedFloating()
}
