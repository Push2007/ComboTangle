//
//  Mode_file.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 5/30/24.
//

import SwiftUI
enum GameType{
    case firstScreen, playingScreen, DirectionsScreen, playingScreenHard, helpScreen
    
    var description: String{
        
        switch self {
        
        case .playingScreen:
            return "Press 'Start' to play."
        case .DirectionsScreen:
            return "Press 'Directions' to learn how to play."
        case .firstScreen:
            return ""
        case .playingScreenHard:
            return "Press 'Start' to play."
        case .helpScreen:
            return ""
             
        }
        
    }
    
}
let numbers: [Int] = [1,2,3,4,5,6,7,8,9].shuffled()
let shapes: [String] = ["cross.fill", "heart.fill", "star.fill", "suit.spade.fill", "pentagon.fill", "circle.fill", "triangle.fill", "square.fill", "diamond.fill"].shuffled()
let colors: [Color] = [.red, .indigo, .green, .purple, .brown, .orange, .cyan, .yellow, .gray].shuffled()


struct Square: Identifiable{
    let id = UUID()
    var sha: String
    var col: Color
    var num: Int
}

enum Move{
    //winningMoves = [] (from the video)
    static var goalShape: String = shapes[0]
    static var goalColor: Color = colors[0]
    static var goalNumber: Int = numbers[0]
    static var currentShape: String = shapes[4]
    static var currentColor: Color = colors[4]
    static var currentNumber: Int = numbers[4]
    static var musicOn: Bool = true
    
    //winning Moves for goalShapes of level 2
    static var goalShape_1: String = shapes[0]
    static var goalColor_1: Color = colors[0]
    static var goalNumber_1: Int = numbers[0]
    
    static var goalShape_2: String = shapes[9]
    static var goalColor_2: Color = colors[9]
    static var goalNumber_2: Int = numbers[9]

}



