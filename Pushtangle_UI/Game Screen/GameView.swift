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
                        VStack(alignment: .leading, spacing: 2) {
                            Text("C = Color")
                            Text("S = Shape   N = Number")
                        }
                        .font(.system(size: 11, weight: .semibold))
                        .lineLimit(1)
                        .fixedSize(horizontal: true, vertical: true)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showExitAlert = true
                        }) {
                            HStack(spacing: 4.0) {
                                Image(systemName: "arrowshape.turn.up.backward.circle")
                                Text("Back")
                            }
                            .frame(height: 20, alignment: .center)
                        }
                        .foregroundColor(Color.primary)
                        .buttonStyle(.bordered)
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
