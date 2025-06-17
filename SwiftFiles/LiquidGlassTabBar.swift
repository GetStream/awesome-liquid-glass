//
//  LiquidGlassDemoView.swift
//  SwiftUIiOS26

//  Squash, stretch and jello-like effect

import SwiftUI

struct LiquidGlassTabBar: View {
    @State private var recentItems = ["Message", "Invite", "Promo"]
    
    @State private var servers = [
        Server(name: "Production", isDefault: true),
        Server(name: "Staging", isDefault: false),
        Server(name: "Development", isDefault: false)
    ]
    
    var body: some View {
        NavigationStack {
            TabView {
                Image(.kid1)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Alerts")
                    }
                
                Image(.kid1)
                    .tabItem {
                        Image(systemName: "timer")
                        Text("Timers")
                    }
                    .badge(recentItems.count)   // badge on the timer tab
            }
            // Trailing toolbar: menucard button showing the same items
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Text("Recents")
                            .badge(recentItems.count)
                        ForEach(recentItems, id: \.self) { item in
                            Text(item)
                        }
                    } label: {
                        Label("Menu", systemImage: "menucard")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                   Button {
                        
                   } label: {
                       Label("Menu", systemImage: "menucard")
                   }
                }
            }
        }
    }
}

#Preview {
    LiquidGlassTabBar()
}
