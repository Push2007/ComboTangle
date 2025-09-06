//
//  SettingsView.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 9/15/24.
//

import SwiftUI
import AVFoundation
struct SettingsView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack{
                    
                    Text("Audio")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.primary) // Optionally, you can change the text color
                        .padding()
                    HStack{
                        Button(action: {
                            Move.musicOn = true
                            
                        }){
                            HStack(spacing: 1.0){
                                Text("On")
                                Image(systemName: "checkmark")
                            }
                        }
                        .foregroundColor(Color.primary)
                        .buttonStyle(.bordered)
                        Button(action: {
                            Move.musicOn = false
                            
                        }){
                            HStack(spacing: 1.0){
                                Text("Off")
                                Image(systemName: "xmark")
                            }
                        }
                        .foregroundColor(Color.primary)
                        .buttonStyle(.bordered)
                        
                    }
                    Spacer()
                    Button(action: {
                        
                    }){
                        HStack(spacing: 1.0){
                            NavigationLink(destination: StartView()) {
                                Text("Home")
                            }
                            Image(systemName: "house")
                        }
                    }
                    .foregroundColor(Color.primary)
                    .buttonStyle(.bordered)
                    .frame(alignment: .bottom)
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
                
                
                
                .padding()
                .textFieldStyle(.roundedBorder)
                .frame(width: 500)
            }
            .navigationTitle("ComboTangle")
            .navigationBarBackButtonHidden(true)
        } else {
            // Fallback on earlier versions
        } // Hides the back button in SecondView
    }
           
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(GameService())
    }
}
