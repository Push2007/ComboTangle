//
//  ContentView.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 5/29/24.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var game: GameService
    @State private var gameType: GameType = .firstScreen
    @FocusState private var focus: Bool
    @State private var startGame = false
    @State private var startGame2 = false
    @State private var startDirections = false
    @State private var startGameHard = false
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack{
                    
                    
                    Picker("Select ", selection: $gameType){
                        Text("Choose a ComboTangle mode").tag(GameType.firstScreen)
                        Text("EasyTangle").tag(GameType.playingScreen)
                        Text("HardTangle").tag(GameType.playingLevel2)
                        Text("Directions").tag(GameType.DirectionsScreen)
                        Text("Settings & Support").tag(GameType.helpScreen)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(lineWidth: 2))
                    .accentColor(.primary)
                    Text(gameType.description)
                        .padding()
                }
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($focus)
                .frame(width: 500)
                if gameType == .firstScreen{
                    
                    Spacer()
                    Image("Launch_screen_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ComboTangle")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.primary) // Optionally, you can change the text color
                        .padding()
                    
                }
                if gameType == .playingScreen {
                    
                    Button("Start"){
                        
                        focus = true
                        startGame.toggle()
                        
                    }
                    .frame(width: 200.0, height: 50.0)
                    .buttonStyle(.borderedProminent)
                    .disabled(gameType == .firstScreen || gameType == .DirectionsScreen || gameType == .playingScreenHard || gameType == .playingLevel2)
                    Spacer()
                    Image("Launch_screen_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ComboTangle")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.primary) // Optionally, you can change the text color
                        .padding()
                }
                
                if gameType == .playingLevel2 {
                    
                    Button("Start"){
                        
                        focus = true
                        startGame2.toggle()
                        
                    }
                    .frame(width: 200.0, height: 50.0)
                    .buttonStyle(.borderedProminent)
                    .disabled(gameType == .firstScreen || gameType == .DirectionsScreen || gameType == .playingScreenHard || gameType == .playingScreen)
                    Spacer()
                    Image("Launch_screen_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ComboTangle")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.primary) // Optionally, you can change the text color
                        .padding()
                }
                
                if gameType == .DirectionsScreen {
                    
                    Button("Directions"){
                        
                        focus = true
                        startDirections.toggle()
                        
                    }
                    .padding()
                    .frame(width: 200.0, height: 50.0)
                    .buttonStyle(.borderedProminent)
                    .disabled(gameType == .firstScreen || gameType == .playingScreen || gameType == .playingScreenHard || gameType == .playingLevel2)
                    Spacer()
                    Image("Launch_screen_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ComboTangle")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.primary) // Optionally, you can change the text color
                        .padding()
                }
                
                if gameType == .helpScreen{
                    
                    Button(action: {
                        
                    }){
                        HStack(spacing: 1.0){
                            NavigationLink(destination: SettingsView()) {
                                Text("Settings")
                            }
                            Image(systemName: "gear")
                        }
                    }
                    .foregroundColor(Color.primary)
                    .buttonStyle(.bordered)
                    Spacer()
                    Text("Do you have any questions or issues? \nPlease feel free to contact \n our team at PushTangle \n Email - Pushtangle@gmail.com")
                        .font(.system(size: 20))
                        .multilineTextAlignment(.center)
                    Spacer()
                    Image("Launch_screen_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ComboTangle")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.primary) // Optionally, you can change the text color
                        .padding()
                    
                }
                
            }
            .navigationTitle("ComboTangle")
            .fullScreenCover(isPresented: $startGame){
                GameView()
                
                
            }
            
            .fullScreenCover(isPresented: $startGame2){
                GameViewLvl2()//for now
                
                
            }
            
            .fullScreenCover(isPresented: $startDirections){
                DirectionsView()
                
            }
            .navigationBarBackButtonHidden(true)
        } else {
            // Fallback on earlier versions
        } // Hides the back button in SecondView
    }
    
       
}
    

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .environmentObject(GameService())
    }
}
