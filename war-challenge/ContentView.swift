//
//  ContentView.swift
//  war-challenge
//
//  Created by kv on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    // generate random number from 2 and 14 and update cards
                    let playerRandom = String(Int.random(in: 2...14))
                    let cpuRandom = String(Int.random(in: 2...14))
                    playerCard = "card" + playerRandom
                    cpuCard = "card" + cpuRandom
                    // update score
                    if cpuRandom<playerRandom{
                        playerScore+=1
                    }else if cpuRandom>playerRandom{
                        cpuScore+=1
                    }
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(
                                .system(size: 30))
                            .foregroundColor(Color.white)
                            .padding(.bottom,10)
                        Text(String(playerScore))
                            .font(
                                .system(size: 30))
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(
                                .system(size: 30))
                            .foregroundColor(Color.white)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
                            .font(
                                .system(size: 30))
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
