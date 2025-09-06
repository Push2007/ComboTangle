//
//  DirectionsView.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 6/3/24.
//

import SwiftUI

struct DirectionsView: View {
        @Environment(\.dismiss) var dismiss
        var body: some View {
            if #available(iOS 16.0, *) {
                NavigationStack{
                    VStack{
                        Text("Directions")
                            .font(.custom("Times New Roman", size: 35))
                            .bold()
                        Text("A board in EasyTangle consists")
                            .font(.system(size: 20))
                        Text("of squares in a 3 x 3 layout")
                            .font(.system(size: 20))
                        Text("(3 rows 3 columns),")
                            .font(.system(size: 18))
                            .bold()
                            .frame(alignment: .center)
                        Text("but what does a square consist of?")
                            .font(.system(size: 20))
                            .foregroundColor(Color.blue)
                            .bold()
                    }
                    Spacer()
                    Text("A square has 3 things...")
                        .font(.system(size: 22))
                    Text("A color, a shape, and a number.")
                        .font(.system(size: 22))
                        .bold()
                    
                    ZStack{
                        Rectangle()
                            .fill(.red)
                            .frame(width: 200, height: 200)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 138)
                            .foregroundColor(Color.black)
                        Text(String(1))
                            .foregroundColor(Color.white)
                            .font(.system(size: 54))
                    }
                    Text("For example, this square consists of ")
                        .font(.system(size: 22))
                    Text("Red")
                        .font(.system(size: 30))
                        .bold()
                    Text("A Circle")
                        .font(.system(size: 30))
                        .bold()
                    Text("The Number 1")
                        .font(.system(size: 30))
                        .bold()
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
                                    NavigationLink(destination: DirectionsView2()) {
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

struct DirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView()
    }
}
