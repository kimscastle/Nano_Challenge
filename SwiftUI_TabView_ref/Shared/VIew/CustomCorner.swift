//
//  CustomCorner.swift
//  SwiftUI_TabView_ref (iOS)
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

struct CustomCorner: Shape {
    
    var corners: UIRectCorner
    //.topLeft, .topRight같이 코너를 정해줄수있는 변수
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }

}
