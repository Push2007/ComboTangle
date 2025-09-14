//
//  GameView.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 6/1/24.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var game: GameService
    @Environment(\.dismiss) var dismiss
    @State private var showExitAlert = false
    @State private var startStartView = false
    @State private var reloadView = false
    @State private var startDirections = false
    @StateObject var audioPlayer = AudioPlayer() // Initialize AudioPlayer
    public var musicOn = true
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack(alignment: .center, spacing: 0.0) {
                    let originalSquareView = SquareView(index: 1)
                    originalSquareView
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("(C = Color) (S = Shape) (N = Number)")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14))
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showExitAlert = true
                        }) {
                            HStack(spacing: 1.0) {
                                Image(systemName: "arrowshape.turn.up.backward.circle")
                                Text("Back")
                            }
                        }
                        .foregroundColor(Color.primary)
                        .buttonStyle(.bordered)
                        .padding(.bottom)
                    }
                }
                .alert(isPresented: $showExitAlert) {
                    Alert(
                        title: Text("Exit Game"),
                        message: Text("Are you sure you want to exit the game? All data will be lost."),
                        primaryButton: .destructive(Text("Yes")) {
                            dismiss()
                        },
                        secondaryButton: .cancel()
                    )
                }
                .fullScreenCover(isPresented: $startStartView) {
                    StartView()
                }
                .onAppear {
                    audioPlayer.playBackgroundMusic() // Start playing music when the view appears
                }
                .onDisappear {
                    audioPlayer.stopBackgroundMusic() // Stop music when the view disappears
                }
                .navigationBarBackButtonHidden(true) // Hides the back button in SecondView
            }
        } else {
            // Fallback on earlier versions
        }
    }
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
                .environmentObject(GameService())
        }
    }
}
