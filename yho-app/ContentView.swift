//
//  ContentView.swift
//  yho-app
//
//  Created by Jafa on 27/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Home()
        OnboardingScreen()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Home Screen
struct Home: View {
    var body: some View {
        VStack {
            Text("YHO Bank")
                .font(.title)
                .fontWeight(.heavy)
        }
    }
}

struct OnboardingScreen: View {
    let screens = [
        OnboardingView(imageName: "screen1", title: "Managing money is easy with Yho!", backgroundColor: Color(red:57/255,green:96/255,blue:215/255)),
        OnboardingView(imageName: "screen2", title: "Get a new Card with free delivery", backgroundColor: Color(red:118/255,green:99/255,blue:230/255)),
        OnboardingView(imageName: "screen3", title: "Spend Smarter everyday. Ready?", backgroundColor: Color(red:57/255,green:96/255,blue:215/255))
    ]

    var body: some View {
            ZStack {
                Spacer()
                
                TabView {
                    ForEach(screens, id: \.title) { screen in
                        screen
                    }
                    
                }
                .frame(maxHeight: .infinity)
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
               
        }
            .ignoresSafeArea(.all)
        
    }
}

struct OnboardingView: View {
    let imageName: String
    let title: String
    let backgroundColor: Color

    var body: some View {
        ZStack {
        VStack {
            Spacer(minLength: 0)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .kerning(1.5)
            Spacer(minLength: 0)
            
            HStack {
                Button("Login", role: .none) {
                }
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .background(Color.black)
                .cornerRadius(40)
                
                
                Button("Signup", role: .none) {
                }
                .fontWeight(.semibold)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .cornerRadius(40)
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 50)
            
        }
        .background(backgroundColor)
    }
        

    }
}




