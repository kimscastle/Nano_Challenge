//
//  model.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/02.
//
import Foundation
import SwiftUI

struct Mybook: Identifiable, Hashable {
    let id = UUID()
    let backGroundColor: Color
    let subject: String
    let title: String
}

struct ReferenceSub: Identifiable{
    let id = UUID()
    let backGroundColor: Color
    let image: Image
    let title: String
}

let refsublist1: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .appgray1, image: Image("SwiftUI_Icon"), title: "SwiftUI의 모든 것🍎\n(영어원서주의)"),
    ReferenceSub(backGroundColor: .appgray2, image: Image("SwiftUI_Icon"), title: "SwiftUI의\n공식 튜토리얼🍎"),
    ReferenceSub(backGroundColor: .appbrown1, image: Image("SiwftUITutorial_Icon"), title: "다양한 SwiftUI\n예시와 튜토리얼📖")
]


extension Color{
    static let primaryblue = Color("primaryblue")
    static let background = Color("background")
    static let appred = Color("appred")
    static let apporange = Color("apporange")
    static let appgray1 = Color("appgray1")
    static let appgray2 = Color("appgray2")
    static let appbrown1 = Color("appbrown1")
    static let appbrown2 = Color("appbrown2")
    static let appyellow = Color("appyellow")
    static let backgroundReverse = Color("backgroundReverse")
}
