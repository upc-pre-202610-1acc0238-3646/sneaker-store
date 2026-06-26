//
//  OnBoardingView.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var showMainView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                
                Text("Boost Your Style\nSense")
                    .bold()
                    .font(.largeTitle).multilineTextAlignment(.center)
                
                Text("Discover, shop, and unlock exclusive sneakers tailored just for you.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button {
                    showMainView.toggle()
                } label: {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 24, height: 24)
                .tint(.black)
                .padding()
                .background(.yellow)
                .clipShape(Circle())
                
                
                Spacer()
            }
            .ignoresSafeArea()
            .padding(.horizontal, 16)
            .background(.gray.opacity(0.1))
            .navigationDestination(isPresented: $showMainView) {
                MainView()
            }
        }
    }
}

#Preview {
    OnBoardingView()
}
