//
//  Pushtangle_UIApp.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 5/29/24.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(game)
                
        }
    }
}
