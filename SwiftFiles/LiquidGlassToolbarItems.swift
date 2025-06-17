//
//  LiquidGlassToolbarItems.swift
//  SwiftUIiOS26

import SwiftUI

struct LiquidGlassToolbarItems: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.kid1)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                
                Text("Liquid Glass Toolbar Items")
                    .font(.title)
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarLeading) {
                            Button {
                                //
                            } label: {
                                Image(systemName: "chevron.backward")
                            }
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "chevron.forward")
                            }
                            
                            
                        }
                        
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                //
                            } label: {
                                Image(systemName: "xmark")
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    LiquidGlassToolbarItems()
        .preferredColorScheme(.dark)
}
