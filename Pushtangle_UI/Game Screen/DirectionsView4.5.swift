//
//  DirectionsView4.5.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 7/30/24.
//

import SwiftUI

struct DirectionsView4_5: View {
        @Environment(\.dismiss) var dismiss
        @State private var squares: [Square] = []
        @State private var numbers: [Int] = [1,2,3,4,5,6,7,8,9]
        @State private var shapes: [String] = ["cross.fill", "heart.fill", "star.fill", "suit.spade.fill", "pentagon.fill", "circle.fill", "triangle.fill", "square.fill", "diamond.fill"]
        @State private var colors: [Color] = [.red, .indigo, .green, .purple, .brown, .orange, .cyan, .yellow, .gray]
        @State private var initialColors: [Color] = []//reset grid
        @State private var initialShapes: [String] = []//reset grid
        @State private var initialNumbers: [Int] = []//reset grid
    
    
        var body: some View {
            if #available(iOS 16.0, *) {
                NavigationStack{
                    Text("Directions")
                        .font(.custom("Times New Roman", size: 32.5))
                        .bold()
                    Spacer()
                    
                    
                    VStack(spacing: 2.0){
                        HStack(spacing: 47.0){//top 3 buttons
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.up")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 20.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.up")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 20.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.up")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 20.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            
                        }
                        HStack(spacing: 2.0) {
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.left")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 20.0, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[0])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[0])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[0]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[1])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[1])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[1]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[2])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[2])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[2]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 20.0, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        HStack(spacing: 2.0) {
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.left")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 20.0, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[3])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[3])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[3]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[4])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[4])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[4]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[5])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[5])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[5]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 20.0, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        HStack(spacing: 2.0) {
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.left")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 20.0, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[6])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[6])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[6]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[7])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[7])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[7]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            ZStack{
                                Rectangle()
                                    .fill(colors[8])
                                    .frame(width: 85, height: 85)
                                Image(systemName: shapes[8])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 54)
                                Text(String(numbers[8]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 21))
                                //place winning stuff here
                                
                            }
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 20.0, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        HStack(spacing: 47.0){//botom 3 buttons
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.down")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 20.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.down")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 20.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            Button(action: {
                                print("")
                            }) {
                                Image(systemName: "arrow.down")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 20.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            
                        }
                        HStack(spacing: 65){
                            
                            
                            Button(action: {
                                // Action when the button is tapped
                                print("")
                            }) {
                                Image(systemName: "arrow.clockwise")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 40.0)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            Button("New Game"){
                                newGame()
                                randomise()
                            }
                            .frame(width: 115.0)
                            .buttonStyle(.bordered)
                            .padding()
                            .foregroundColor(Color.primary)
                            Button(action: {
                                // Action when the button is tapped
                                print("")
                            }) {
                                Image(systemName: "arrow.counterclockwise")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                                    .frame(width: 40, height: 40)
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        HStack(spacing: 0.0){
                            Button("Directions"){
                            }
                            .buttonStyle(.bordered)
                            .padding()
                            .foregroundColor(Color.primary)
                            .frame(width: 140.0)
                            
                            
                            Button("Restart"){
                                
                            }
                            .buttonStyle(.bordered)
                            .padding()
                            .foregroundColor(Color.primary)
                            .frame(width: 140.0)
                            
                            
                            
                        }
                    }
                    Text("When you click 'New Game,' a new board will be created. The 'Restart' button resets the board, taking back all your moves. ")
                        .font(.system(size: 18.8))
                        .multilineTextAlignment(.center)
                        .frame(alignment: .center)
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
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button(action: {
                            }){
                                HStack(spacing: 3.0){
                                    NavigationLink(destination: DirectionsView5()) {
                                        Text("Next")
                                    }
                                    Image(systemName: "arrowshape.turn.up.right.circle")
                                }
                            }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color.primary)
                        }
                    }
                    //.navigationTitle("Directions")
                    //font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    
                    
                }
                .navigationBarBackButtonHidden(true)
            } else {
                // Fallback on earlier versions
            } // Hides the back button in SecondView

    }
    func newGame() {
            colors = [.red, .indigo, .green, .purple, .brown, .orange, .cyan, .yellow, .gray].shuffled()
            shapes = ["cross.fill", "heart.fill", "star.fill", "suit.spade.fill", "pentagon.fill", "circle.fill", "triangle.fill", "square.fill", "diamond.fill"].shuffled()
            numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffled()
            randomise()
            initializeSquares()
        }
    func initializeSquares() {
        squares = zip3(shapes, colors, numbers).map { Square(sha: $0, col: $1, num: $2) }//arry of "squares" is made
        Move.currentColor = squares[4].col
        Move.currentShape = squares[4].sha
        Move.currentNumber = squares[4].num
        // Store the initial state
        initialColors = colors
        initialShapes = shapes
        initialNumbers = numbers
    }
    func randomise(){
        Move.goalShape = shapes[Int.random(in: 0...8)]
        Move.goalColor = colors[Int.random(in: 0...8)]
        Move.goalNumber = numbers[Int.random(in: 0...8)]
    }
    private func zip3<A, B, C>(_ a: [A], _ b: [B], _ c: [C]) -> [(A, B, C)] {
        return Array(zip(a, zip(b, c)).map { ($0, $1.0, $1.1) })
        //zips parameters of "Square" into tuples in array "squares"
    }
    
}

struct DirectionsView4_5_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView4_5()
    }
}

