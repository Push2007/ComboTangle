//
//  DirectionsView12.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 7/22/24.
//

import SwiftUI

struct DirectionsView12: View {
        @Environment(\.dismiss) var dismiss
        var body: some View {
            if #available(iOS 16.0, *) {
                NavigationStack{
                    VStack(spacing: 3.0){
                        Text("Directions")
                            .font(.custom("Times New Roman", size: 35))
                            .bold()
                        
                        Text("Now you are ready to play a game of")
                            .font(.system(size: 20))
                            .bold()
                        Text("EasyTangle!")
                            .font(.system(size: 20))
                            .bold()
                        Text("Lets see what you can do. Press 'Start' \n to try out a game of EasyTangle.")
                            .font(.system(size: 20))
                            .padding(.top)
                            .multilineTextAlignment(.center)
                        
                        Button(action: {
                            
                        }){
                            HStack(spacing: 1.0){
                                NavigationLink(destination: GameView()) {
                                    Text("Start")
                                }
                            }
                        }
                        .foregroundColor(Color.white)
                        .frame(width: 200.0, height: 50.0)
                        .buttonStyle(.borderedProminent)
                    }
                    Spacer()
                    Image("Launch_screen_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ComboTangle")
                        .font(.largeTitle) // Optionally, you can adjust the font size
                        .fontWeight(.bold)
                        .foregroundColor(.black) // Optionally, you can change the text color
                        .padding()
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
                    
                    
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading){
                            Button(action: {
                                dismiss()
                            }){
                                HStack(spacing: 3.0){
                                    Image(systemName: "arrowshape.turn.up.backward.circle")
                                    Text("Back")
                                }
                            }
                            .foregroundColor(Color.primary)
                            .buttonStyle(.bordered)
                        }
                        
                    }
                    
                }
                .navigationBarBackButtonHidden(true)
            } else {
                // Fallback on earlier versions
            } // Hides the back button in SecondView
    }
}

struct DirectionsView12_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView12()
    }
}
