//
//  ContentView.swift
//  App
//
//  Created by Aarin Ajmera on 28/03/23.
//  Making an App with SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
                
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                
            
                HStack {
                    
                  Spacer()
                    
                  Image(playerCard)
                    
                  Spacer()
                    
                  Image(cpuCard)
                    
                  Spacer()
                    
                }
                Spacer()
                
                
                
                Button(action: {
                    
                    //Creating Random
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Changing playerCard & cpuCard
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Updating Score
                    if playerRand > cpuRand{
                        playerScore += 1
                    }
                    
                    else if playerRand < cpuRand {
                        
                        cpuScore += 1
                    }
                    
                    
                    
                }, label: {
                    
                    Image("dealbutton")
                    
                })
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("Computer")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                    }
                    Spacer()
                }
                
                Spacer()
                
                
            }
        }

        
        
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
