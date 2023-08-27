//
//  WaveInteractionCardView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 27.08.2023.
//

import Foundation
import SwiftUI

struct Waves: Shape {
    var waveHeight: CGFloat
    var phase: Angle
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.maxY)) // Bottom Left
        
        for x in stride(from: 0, through: rect.width, by: 1) {
            let relativeX: CGFloat = x / 50 //wavelength
            let sine = CGFloat(sin(relativeX + CGFloat(phase.radians)))
            let y = waveHeight * sine //+ rect.midY
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY)) // Top Right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // Bottom Right
        
        return path
    }
}


struct WaveInteractionCardView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                HStack {
                    Text("Welcome back, Gül!")
                        .font(.system(size: 34, weight: .bold)) // Adjust the size and weight
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 25)
                }
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 200)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding(25)
                    .overlay(
                        VStack(spacing: 20) {
                            Spacer()
                            Text("Gül Eda Aydemir")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                            HStack {
                                Text("12** **** **** **34")
                                    .padding()
                                Spacer()
                                Text("11/26")
                                Text("123")
                                    .padding()
                            }
                        }.padding()
                    )
                
                GeometryReader { geo in
                    ZStack {
                        Waves(waveHeight: 30, phase: Angle(degrees: (Double(geo.frame(in: .global).minY) + 45) * -1 * 0.7))
                            .foregroundColor(.orange)
                            .opacity(0.5)
                        Waves(waveHeight: 30, phase: Angle(degrees: Double(geo.frame(in: .global).minY) * 0.7))
                            .foregroundColor(.red)
                    }
                    ZStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 100)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .padding(25)
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 100)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .padding(25)
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 100)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .padding(25)
                        }
                        
                    }.padding(.top, 50)
                    
                    
                }.frame(height: UIScreen.main.bounds.height, alignment: .center)
                // Other Views...
            }
        }
    }
}
