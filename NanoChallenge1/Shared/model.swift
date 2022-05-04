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

struct ReferenceMain: Identifiable{
    let id = UUID()
    let backGroundColor: Color
    let image: Image
    let tag: String
    let title: String
    let explain: String
}

let refsublist1: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .appgray1, image: Image("SwiftUI_Icon"), title: "SwiftUI의 기능을 설명해주는\n문서(영어원서주의)🍎"),
    ReferenceSub(backGroundColor: .appgray2, image: Image("SwiftUI_Icon"), title: "SwiftUI의 기능을 만들어 보는\n공식 튜토리얼🍎"),
    ReferenceSub(backGroundColor: .appbrown1, image: Image("SwiftUITutorial_Icon"), title: "다양한 SwiftUI디자인 예시와\n튜토리얼📖")
]

let refmainlist: [ReferenceMain] = [
    ReferenceMain(backGroundColor: .primaryblue, image: Image("SwiftUI_Icon_Main"), tag: "swiftUI 공식문서", title: "SwiftUI의 모든 것🍎(영어 원서 주의)", explain: "SwiftUI의 기능이 설명되어있는 Apple의 공식 문서"),
    ReferenceMain(backGroundColor: .appyellow, image: Image("SwiftUI_Icon_Main"), tag: "swiftUI 공식문서", title: "swiftUI 공식문서", explain: "SwiftUI의 기능들을 한번씩 사용해서 완성된 View를 완성해볼 수 있는 공식 Tutorial document"),
    ReferenceMain(backGroundColor: .appgray2, image: Image("SiwftUITutorial_Icon_Main"), tag: "swiftUI 공식문서", title: "swiftUI 공식문서", explain: "잘모르겠습니다")
]

let test1: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .primaryblue, image: Image("SwiftUI_Icon"), title: "Test1"),
    ReferenceSub(backGroundColor: .apporange, image: Image("SwiftUI_Icon"), title: "Test2"),
    ReferenceSub(backGroundColor: .appred, image: Image("SwiftUITutorial_Icon"), title: "Test3")
]

let test2: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .primaryblue, image: Image("SwiftUI_Icon"), title: "Test4"),
    ReferenceSub(backGroundColor: .apporange, image: Image("SwiftUI_Icon"), title: "Test5"),
    ReferenceSub(backGroundColor: .appred, image: Image("SwiftUITutorial_Icon"), title: "Test6")
]

let test3: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .apporange, image: Image("SwiftUI_Icon"), title: "Test7"),
    ReferenceSub(backGroundColor: .appgray1, image: Image("SwiftUI_Icon"), title: "Test8"),
    ReferenceSub(backGroundColor: .appbrown2, image: Image("SwiftUITutorial_Icon"), title: "Test9")
]

let refSet: [[ReferenceSub]] = [refsublist1, test1, test2, test3]

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
