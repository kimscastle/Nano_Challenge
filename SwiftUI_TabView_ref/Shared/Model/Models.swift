//
//  Models.swift
//  SwiftUI_TabView_ref (iOS)
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

extension Color{
    static let BG1 = Color("BG1")
    static let BG2 = Color("BG2")
}

extension View{
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}
