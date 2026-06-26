//
//  MainView.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            
            Tab("Favorites", systemImage: "heart") {
                
            }
            
            Tab("Cart", systemImage: "cart") {
                
            }
            
            Tab("Profile", systemImage: "person") {
                
            }
        }
        .tint(.yellow)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    MainView()
}
