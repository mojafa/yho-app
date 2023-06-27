//
//  ContentView.swift
//  yho-app
//
//  Created by Jafa on 27/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {

            ZStack {
                VStack {
                    Text("WELCOME TO YHO BANK!")
                        .foregroundStyle(.white)
                    Spacer()
                    Text("Managing Yho money is easy with Yho!")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                       
                    Spacer()
                    HStack{
                        Button("LOGIN", role: .none) {
                        }
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .border(Color.black, width: 10)
                        .cornerRadius(20)
                        
                        Button("SIGNUP", role: .none) {
                        }
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .border(Color.white, width: 10)
                        .cornerRadius(20)
                        
                    }
                   

                }
               
                    }.background(Color(red:57/255,green:96/255,blue:215/255))
            Spacer()
           
            
            
            })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
