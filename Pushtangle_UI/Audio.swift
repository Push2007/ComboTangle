//
//  Audio.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 9/15/24.
//

import AVFoundation

class AudioPlayer: ObservableObject {
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        guard let url = Bundle.main.url(forResource: "flat-8-bit-gaming-music-instrumental-211547", withExtension: "mp3") else {
            print("Could not find the audio file.")
            return
        }
        
        do {
            if Move.musicOn{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1 // Loop indefinitely
                audioPlayer?.volume = 0.15
                audioPlayer?.play()
            }
            
        } catch {
            print("Failed to initialize audio player: \(error.localizedDescription)")
        }
    }
    
    func stopBackgroundMusic() {
        if Move.musicOn{
            audioPlayer?.stop()
        }
    }
}

