//
//  Banner.swift
//  SneakerStore
//
//  Created by Alumnos on 24/6/26.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(
                    LinearGradient(
                        colors: [.black, .black, .yellow],
                        startPoint: .leading,
                        endPoint: .trailing)
                )
            VStack(alignment: .leading) {
                Text("Get your\nspecial sale")
                    .foregroundStyle(.white)
                    .font(.system(size: 32, weight: .heavy, design: .rounded))
                
                Text("Up to 50%")
                    .foregroundStyle(.yellow)
                    .font(.system(size: 24, weight: .bold, design: .rounded))

                
                Button {
                    
                } label: {
                    Text("Shop now")
                        .foregroundStyle(.black)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(.yellow)
                        .clipShape(Capsule())
                }
                

            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Image("banner")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .offset(x: 10)
            
            
        }
        .frame(height: 240)
        .padding(.horizontal, 16)
    }
}


#Preview {
    Banner()
}
