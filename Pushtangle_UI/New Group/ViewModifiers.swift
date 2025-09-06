//
//  ViewModifiers.swift
//  Pushtangle_UI
//
//  Created by Pushkar Seshadri on 6/1/24.
//

import SwiftUI

struct NavStackContainer: ViewModifier{
    func body(content: Content) -> some View {
        if #available(iOS 16, *){
            NavigationStack{
                content
            }
        }
    }
}

extension View{
    public func inNavigationStack() -> some View{
        return self.modifier(NavStackContainer())
    }
}
