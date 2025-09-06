//
//  DirectionsView3.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 7/18/24.
//

import SwiftUI
struct DirectionsView3: View {
        @Environment(\.dismiss) var dismiss
        @State private var numbers: [Int] = [1,2,3,4,5,6,7,8,9]
        @State private var shapes: [String] = ["cross.fill", "heart.fill", "star.fill", "suit.spade.fill", "pentagon.fill", "circle.fill", "triangle.fill", "square.fill", "diamond.fill"]
        @State private var colors: [Color] = [.red, .indigo, .green, .purple, .brown, .orange, .cyan, .yellow, .gray]
        var body: some View {
            if #available(iOS 16.0, *) {
                NavigationStack{
                    VStack{
                        Text("Directions")
                            .font(.custom("Times New Roman", size: 35))
                            .bold()
                        Text("How do you win a game of ComboTangle?")
                            .font(.system(size: 19))
                            .foregroundColor(Color.blue)
                            .bold()
                    }
                    Spacer()
                    HStack{
                        Text(" Your goal is")
                            .font(.custom("Times New Roman", size: 26))
                        ZStack{
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: 55, height: 55)
                            Image(systemName: "square.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 34)
                                .foregroundColor(Color.black)
                            Text(String(2))
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                            
                            
                        }
                    }
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
                    }
                    Spacer()
                    Text("In order to win a game of EasyTangle, you \n have to match the middle square of the board to the goal square. In this case, the brown \n hexagon 5 should become purple square 2.")
                        .font(.system(size: 18))
                        .multilineTextAlignment(.center)
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
                                    NavigationLink(destination: DirectionsView4()) {
                                        Text("Next")
                                    }
                                    Image(systemName: "arrowshape.turn.up.right.circle")
                                }
                            }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color.primary)
                        }
                    }
                    
                    
                }
                .navigationBarBackButtonHidden(true)
            } else {
                // Fallback on earlier versions
            } // Hides the back button in SecondView

    }
}

struct DirectionsView3_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView3()
    }
}
