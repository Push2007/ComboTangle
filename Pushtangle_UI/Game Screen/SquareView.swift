//
//  SqaureView.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 6/2/24.
//


import SwiftUI
struct SquareView: View {
    @EnvironmentObject var game: GameService
    @State private var squares: [Square] = []
    @State private var startDirections = false
    let index: Int
    let rows = 3
    let columns = 3
    @State private var numbers: [Int] = [1,2,3,4,5,6,7,8,9].shuffled()
    @State private var shapes: [String] = ["cross.fill", "heart.fill", "star.fill", "suit.spade.fill", "pentagon.fill", "circle.fill", "triangle.fill", "square.fill", "diamond.fill"].shuffled()
    @State private var colors: [Color] = [.red, .indigo, .green, .purple, .brown, .orange, .cyan, .yellow, .gray].shuffled()
    @State private var initialColors: [Color] = []//reset grid
    @State private var initialShapes: [String] = []//reset grid
    @State private var initialNumbers: [Int] = []//reset grid
    @State private var isTitleVisible: Bool = false
    @State private var movesTaken: Int = 0

    func randomise(){
        Move.goalShape = shapes[Int.random(in: 0...8)]
        Move.goalColor = colors[Int.random(in: 0...8)]
        Move.goalNumber = numbers[Int.random(in: 0...8)]
    }
    var body: some View {
        Spacer()
        
        HStack(spacing: 20.0){
            HStack{
                Text(" Goal:")
                    .font(.custom("Times New Roman", size: 26))
                ZStack{
                        // Code for other devices
                    Rectangle()
                        .fill(Move.goalColor)
                        .frame(width: 75, height: 75)
                    Image(systemName: Move.goalShape)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .foregroundColor(Color.black)
                    Text(String(Move.goalNumber))
                        .foregroundColor(Color.white)
                        .font(.system(size: 19.5))
                    
                    
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
            Text("Moves: \(movesTaken)")
                .font(.custom("Times New Roman", size: 26))
                .frame(maxWidth: .infinity, alignment: .center)
            
            
        }
        Spacer()
        
        
        Spacer()
        ZStack{
            VStack(spacing: 2.0) {
                HStack(spacing: 72.0){//top 3 buttons
                    
                    Button(action: {
                        // Action when the button is tapped
                        swapColorsX(indices: [0, 3, 6])
                        movesTaken += 1
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
                    .disabled(isTitleVisible)
                    
                    Button(action: {
                        // Action when the button is tapped
                        swapShapesX(indices: [1,4,7])
                        movesTaken += 1
                        updateMiddleSquare()
                        if checkWinner() == true{
                            isTitleVisible = true
                        }
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
                    .disabled(isTitleVisible)
                    Button(action: {
                        // Action when the button is tapped
                        swapNumbersX(indices: [2,5,8])
                        movesTaken += 1
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
                .disabled(isTitleVisible)
                ForEach(0..<rows, id: \.self) { row in
                    HStack(spacing: 2.0) {
                        Button(action: {
                            movesTaken += 1
                            // Action when the button is tapped
                            if row == 0{
                                swapShapesX(indices: [0,1,2])
                                swapNumbersX(indices: [0,1,2])
                            }
                            if row == 1{
                                swapColorsX(indices: [3,4,5])
                                swapNumbersX(indices: [3,4,5])
                                updateMiddleSquare()
                                if checkWinner() == true{
                                    isTitleVisible = true
                                }
                            }
                            if row == 2{
                                swapColorsX(indices: [6,7,8])
                                swapShapesX(indices: [6,7,8])
                            }
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
                        .disabled(isTitleVisible)
                        ForEach(0..<self.columns, id: \.self) { column in
                            let index = row * self.columns + column
                            ZStack{
                                if UIScreen.main.bounds.size == CGSize(width: 320, height: 568) { //iphone SE 1st gen
                                    Rectangle()
                                        .fill(self.colors[index])
                                        .frame(width: 92, height: 92)
                                } else if UIScreen.main.bounds.size == CGSize(width: 375, height: 667) {
                                    // Code for iPhone SE (2nd and 3rd generation)
                                    Rectangle()
                                        .fill(self.colors[index])
                                        .frame(width: 100, height: 100)
                                } else {
                                    // Code for other devices
                                    Rectangle()
                                        .fill(self.colors[index])
                                        .frame(width: 108, height: 108)
                                }
                                
                                Image(systemName: self.shapes[index])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.black)
                                    .frame(width: 69)
                                Text(String(numbers[index]))
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 27))
                                //place winning stuff here
                                
                            }
                            
                            
                        }
                        VStack{
                            Button(action: {
                                movesTaken += 1
                                if row == 0{
                                    swapShapes(indices: [0,1,2])
                                    swapNumbers(indices: [0,1,2])
                                }
                                if row == 1{
                                    swapColors(indices: [3,4,5])
                                    swapNumbers(indices: [3,4,5])
                                    updateMiddleSquare()
                                    if checkWinner() == true{
                                        isTitleVisible = true
                                    }
                                    
                                }
                                if row == 2{
                                    swapColors(indices: [6,7,8])
                                    swapShapes(indices: [6,7,8])
                                }
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
                            .disabled(isTitleVisible)
                            if row == 0{
                                Text("SN")
                            }
                            if row == 1{
                                Text("CN")
                            }
                            if row == 2{
                                Text("CS")
                            }
                        }
                        
                    }
                }
                
                HStack(spacing: 72.0){
                    
                    
                    Button(action: {
                        // Action when the button is tapped
                        self.swapColors(indices: [0, 3, 6])
                        movesTaken += 1
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
                    .disabled(isTitleVisible)
                    
                    
                    Button(action: {
                        // Action when the button is tapped
                        self.swapShapes(indices: [1, 4, 7])
                        movesTaken += 1
                        updateMiddleSquare()
                        if checkWinner() == true{
                            isTitleVisible = true
                        }
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
                    .disabled(isTitleVisible)
                    Button(action: {
                        // Action when the button is tapped
                        self.swapNumbers(indices: [2, 5, 8])
                        movesTaken += 1
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
                    .disabled(isTitleVisible)
                    
                }
                HStack(spacing: 100){
                    Text("C")
                    Text("S")
                    Text("N")
                    
                }
                Spacer()
                HStack(spacing: 62.5){
                    
                    VStack{
                        Button(action: {
                            // Action when the button is tapped
                            swapShapesCC(indices: [0,1,2,3,4,5,6,7,8])
                            swapColorsCC(indices: [0,1,2,3,4,5,6,7,8])
                            swapNumbersCC(indices: [0,1,2,3,4,5,6,7,8])
                            movesTaken += 1
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
                        .disabled(isTitleVisible)
                        Text("CSN")
                    }
                    Button("New Game"){
                        newGame()
                        randomise()
                        movesTaken = 0
                        isTitleVisible = false
                    }
                    .frame(width: 115.0)
                    .buttonStyle(.bordered)
                    .padding()
                    .foregroundColor(Color.primary)
                    VStack{
                        Button(action: {
                            // Action when the button is tapped
                            swapColorsCCW(indices: [0,1,2,3,4,5,6,7,8])
                            swapShapesCCW(indices: [0,1,2,3,4,5,6,7,8])
                            swapNumbersCCW(indices: [0,1,2,3,4,5,6,7,8])
                            movesTaken += 1
                        }) {
                            Image(systemName: "arrow.counterclockwise")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding()
                                .frame(width: 40, height: 40.0)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .disabled(isTitleVisible)
                        Text("CSN")
                    }
                    
                }
                HStack(spacing: 0.0){
                    Button("Directions"){
                        startDirections.toggle()
                    }
                    .buttonStyle(.bordered)
                    .padding()
                    .foregroundColor(Color.primary)
                    .frame(width: 140.0)
                    .disabled(isTitleVisible)
                    
                    Button("Restart"){
                        resetGrid()
                        movesTaken = 0
                    }
                    .buttonStyle(.bordered)
                    .padding()
                    .foregroundColor(Color.primary)
                    .frame(width: 140.0)
                    .disabled(isTitleVisible)
                    
                    
                    
                }
                Spacer()
            }
            if isTitleVisible{
                Text("You Won! Click 'New Game' to play again.")
                    .font(.custom("Times New Roman", size: 35))
                    .frame(width: 350, height: 150, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.mint)
                            .frame(alignment: .top)// Fill the rounded rectangle with the mint color
                            
                    )
                
                    .padding(.all)
                    .foregroundColor(Color.black)
                            }
            
        }
        .onAppear(perform: initializeSquares)
        .fullScreenCover(isPresented: $startDirections){
            DirectionsView()
        }
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
    func updateMiddleSquare(){
        Move.currentColor = colors[4]
        Move.currentShape = shapes[4]
        Move.currentNumber = numbers[4]
    }
    private func resetGrid() {
            colors = initialColors
            shapes = initialShapes
            numbers = initialNumbers
        }
    func newGame() {
            colors = [.red, .indigo, .green, .purple, .brown, .orange, .cyan, .yellow, .gray].shuffled()
            shapes = ["cross.fill", "heart.fill", "star.fill", "suit.spade.fill", "pentagon.fill", "circle.fill", "triangle.fill", "square.fill", "diamond.fill"].shuffled()
            numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffled()
            randomise()
            initializeSquares()
        }
    private func checkWinner() -> Bool{
        if (Move.currentColor == Move.goalColor && Move.currentShape == Move.goalShape && Move.currentNumber == Move.goalNumber){
            return true
        }
        return false
    }

    private func zip3<A, B, C>(_ a: [A], _ b: [B], _ c: [C]) -> [(A, B, C)] {
        return Array(zip(a, zip(b, c)).map { ($0, $1.0, $1.1) })
        //zips parameters of "Square" into tuples in array "squares"
    }
    
    private func swapColors(indices: [Int]) {
        guard indices.count == 3 else { return }
        let temp = colors[indices[0]]
        colors[indices[0]] = colors[indices[2]]
        colors[indices[2]] = colors[indices[1]]
        colors[indices[1]] = temp
    }
    private func swapShapes(indices: [Int]) {
        guard indices.count == 3 else { return }
        let temp = shapes[indices[0]]
        shapes[indices[0]] = shapes[indices[2]]
        shapes[indices[2]] = shapes[indices[1]]
        shapes[indices[1]] = temp
    }
    private func swapNumbers(indices: [Int]) {
        guard indices.count == 3 else { return }
        let temp = numbers[indices[0]]
        numbers[indices[0]] = numbers[indices[2]]
        numbers[indices[2]] = numbers[indices[1]]
        numbers[indices[1]] = temp
    }
    private func swapColorsX(indices: [Int]) {
        guard indices.count == 3 else { return }
        let temp = colors[indices[0]]
        colors[indices[0]] = colors[indices[1]]
        colors[indices[1]] = colors[indices[2]]
        colors[indices[2]] = temp
    }
    private func swapShapesX(indices: [Int]) {
        guard indices.count == 3 else { return }
        let temp = shapes[indices[0]]
        shapes[indices[0]] = shapes[indices[1]]
        shapes[indices[1]] = shapes[indices[2]]
        shapes[indices[2]] = temp
    }
    private func swapNumbersX(indices: [Int]) {
        guard indices.count == 3 else { return }
        let temp = numbers[indices[0]]
        numbers[indices[0]] = numbers[indices[1]]
        numbers[indices[1]] = numbers[indices[2]]
        numbers[indices[2]] = temp
    }
    
    private func swapColorsCC(indices: [Int]) {
        guard indices.count == 9 else { return }
        let temp = colors[indices[0]]
        colors[indices[0]] = colors[indices[3]]
        colors[indices[3]] = colors[indices[6]]
        colors[indices[6]] = colors[indices[7]]
        colors[indices[7]] = colors[indices[8]]
        colors[indices[8]] = colors[indices[5]]
        colors[indices[5]] = colors[indices[2]]
        colors[indices[2]] = colors[indices[1]]
        colors[indices[1]] = temp
    }
    private func swapNumbersCC(indices: [Int]) {
        guard indices.count == 9 else { return }
        let temp = numbers[indices[0]]
        numbers[indices[0]] = numbers[indices[3]]
        numbers[indices[3]] = numbers[indices[6]]
        numbers[indices[6]] = numbers[indices[7]]
        numbers[indices[7]] = numbers[indices[8]]
        numbers[indices[8]] = numbers[indices[5]]
        numbers[indices[5]] = numbers[indices[2]]
        numbers[indices[2]] = numbers[indices[1]]
        numbers[indices[1]] = temp
    }
    private func swapShapesCC(indices: [Int]) {
        guard indices.count == 9 else { return }
        let temp = shapes[indices[0]]
        shapes[indices[0]] = shapes[indices[3]]
        shapes[indices[3]] = shapes[indices[6]]
        shapes[indices[6]] = shapes[indices[7]]
        shapes[indices[7]] = shapes[indices[8]]
        shapes[indices[8]] = shapes[indices[5]]
        shapes[indices[5]] = shapes[indices[2]]
        shapes[indices[2]] = shapes[indices[1]]
        shapes[indices[1]] = temp
    }
    private func swapColorsCCW(indices: [Int]) {
        guard indices.count == 9 else { return }
        let temp = colors[indices[0]]
        colors[indices[0]] = colors[indices[1]]
        colors[indices[1]] = colors[indices[2]]
        colors[indices[2]] = colors[indices[5]]
        colors[indices[5]] = colors[indices[8]]
        colors[indices[8]] = colors[indices[7]]
        colors[indices[7]] = colors[indices[6]]
        colors[indices[6]] = colors[indices[3]]
        colors[indices[3]] = temp
    }
    private func swapShapesCCW(indices: [Int]) {
        guard indices.count == 9 else { return }
        let temp = shapes[indices[0]]
        shapes[indices[0]] = shapes[indices[1]]
        shapes[indices[1]] = shapes[indices[2]]
        shapes[indices[2]] = shapes[indices[5]]
        shapes[indices[5]] = shapes[indices[8]]
        shapes[indices[8]] = shapes[indices[7]]
        shapes[indices[7]] = shapes[indices[6]]
        shapes[indices[6]] = shapes[indices[3]]
        shapes[indices[3]] = temp
    }
    private func swapNumbersCCW(indices: [Int]) {
        guard indices.count == 9 else { return }
        let temp = numbers[indices[0]]
        numbers[indices[0]] = numbers[indices[1]]
        numbers[indices[1]] = numbers[indices[2]]
        numbers[indices[2]] = numbers[indices[5]]
        numbers[indices[5]] = numbers[indices[8]]
        numbers[indices[8]] = numbers[indices[7]]
        numbers[indices[7]] = numbers[indices[6]]
        numbers[indices[6]] = numbers[indices[3]]
        numbers[indices[3]] = temp
    }
   
}
    struct SquareView_Previews: PreviewProvider {
        static var previews: some View {
            SquareView(index: 1)
                .environmentObject(GameService())
        }
    }







