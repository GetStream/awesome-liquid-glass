//
//  LiquidGlassPlayButton.swift
//  SwiftUIiOS26
//
//  Graqceful transition 
//

import SwiftUI

struct LiquidGlassPlayButton: View {
    @State private var isPlaying = false
    
    var body: some View {
        ZStack {
            Image(.kid1)
                .resizable()
                .ignoresSafeArea(.all)
            
            Button {
                isPlaying.toggle()
            } label: {
                Image(systemName: "play.fill")
                    .font(.system(size: 80))
                    .padding()
            }
            .buttonStyle(.glass)
            .phaseAnimator([false, true], trigger: isPlaying) { playPauseButton, play in
                if !isPlaying {
                    playPauseButton
                } else {
                    Button {
                        isPlaying.toggle()
                    } label: {
                        Image(systemName: "pause.fill")
                            .font(.system(size: 80))
                            .padding()
                    }
                    .buttonStyle(.glass)
                }
            }
        }
    }
}

#Preview {
    LiquidGlassPlayButton()
}
