//
//  ContentView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isAboutMePresented = false // Track if the About Me sheet is presented
    
    var body: some View {
        NavigationView {
            List {
                
                Group {
                    NavigationLink {
                        SplashScreenAnimationView()
                    } label: {
                        Label("Splash Screen Animation", systemImage: "star.circle.fill")
                    }
                    
                    NavigationLink {
                        ButtonPressEffectsView()
                    } label: {
                        Label("Button Press Effects", systemImage: "rectangle.roundedtop.fill")
                    }
                    
                    NavigationLink {
                        CardFlipAnimationView()
                    } label: {
                        Label("Card Flip Animation", systemImage: "cube.box.fill")
                    }
                    
                    NavigationLink {
                        ParallaxScrollingView()
                    } label: {
                        Label("Parallax Scrolling", systemImage: "line.horizontal.3.decrease.circle.fill")
                    }
                    
                    NavigationLink {
                        LoadingIndicatorView()
                    } label: {
                        Label("Loading Indicator", systemImage: "arrow.clockwise.circle.fill")
                    }
                }
                
                Group {
                    NavigationLink {
                        ModalPresentationView()
                    } label: {
                        Label("Modal Presentation", systemImage: "rectangle.stack.fill")
                    }
                    
                    NavigationLink {
                        ChartAnimationsView()
                    } label: {
                        Label("Chart Animations", systemImage: "waveform.path.ecg.rectangle.fill")
                    }
                    
                    NavigationLink {
                        WalkthroughAnimationsView()
                    } label: {
                        Label("Walkthrough Animations", systemImage: "arrow.right.circle.fill")
                    }
                    
                    NavigationLink {
                        ImageGalleryCarouselView()
                    } label: {
                        Label("Image Gallery Carousel", systemImage: "photo.on.rectangle.fill")
                    }
                    
                    NavigationLink {
                        PulsatingCircleView()
                    } label: {
                        Label("Pulsating Circle Animations", systemImage: "circle.fill")
                    }
                }
                
                NavigationLink {
                    LiquidAnimationView()
                } label: {
                    Label("Liquid Animation", systemImage: "waveform")
                }
                
                NavigationLink {
                    BouncingBallAnimationView()
                } label: {
                    Label("Bouncing Ball Animation", systemImage: "circlebadge.fill")
                }
                
                NavigationLink {
                    FadingTransitionAnimationView()
                } label: {
                    Label("Fading Transition Animation", systemImage: "arrow.triangle.2.circlepath.circle.fill")
                }
                
                NavigationLink {
                    WavingAnimationView()
                } label: {
                    Label("Waving Animation", systemImage: "waveform.path.ecg.rectangle")
                }
                NavigationLink {
                    WaveInteractionCardView()
                } label: {
                    Label("Wave Interaction Card Animation", systemImage: "creditcard")
                }
            }
            .navigationTitle("Animation Examples")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Present the About Me sheet when the settings button is pressed
                        isAboutMePresented.toggle()
                    }) {
                        Image(systemName: "gearshape.fill")
                    }
                }
            }
        }
        .accentColor(.black)
        .sheet(isPresented: $isAboutMePresented) {
            AboutMeView() // Present the About Me sheet as a modal
        }
    }
}

struct AboutMeView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("guledaaydemir")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
            
            Text("About Me")
                .font(.title)
                .foregroundColor(.black)
                .padding(.top, 10)
            
            Text("Gül Eda Aydemir")
                .font(.subheadline)
                .foregroundColor(.black)
            
            Divider()
                .background(Color.black)
                .frame(height: 1)
            
            Text("Contact:")
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text("Email: guledaaydemir@gmail.com")
                .font(.caption)
                .foregroundColor(.black)
            
            Text("Phone: +1234567890")
                .font(.caption)
                .foregroundColor(.black)
            
            Divider()
                .background(Color.black)
                .frame(height: 1)
            
            HStack(spacing: 20) {
                Link("Instagram", destination: URL(string: "https://www.instagram.com/solo.stasera/")!)
                    .font(.caption)
                    .foregroundColor(.black)
                
                Link("YouTube", destination: URL(string: "https://www.youtube.com/@GulEdaAydemir")!)
                    .font(.caption)
                    .foregroundColor(.black)
                
                Link("LinkedIn", destination: URL(string: "https://www.linkedin.com/in/gul-eda-aydemir/")!)
                    .font(.caption)
                    .foregroundColor(.black)
                
                Link("GitHub", destination: URL(string: "https://github.com/guledaaydemir")!)
                    .font(.caption)
                    .foregroundColor(.black)
            }
            
            Spacer()
        }
        .padding()
    }
}
