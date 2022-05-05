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
    var title: String
    let emoji: String
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
    let url: String
}

let refsublist1: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .appgray1, image: Image("SwiftUI_Icon"), title: "SwiftUI의 기능을 설명해주는\n문서(영어원서주의)🍎"),
    ReferenceSub(backGroundColor: .appgray2, image: Image("SwiftUI_Icon"), title: "SwiftUI의 기능을 만들어 보는\n공식 튜토리얼🍎"),
    ReferenceSub(backGroundColor: .appbrown1, image: Image("SwiftUITutorial_Icon"), title: "다양한 SwiftUI디자인 예시와\n튜토리얼📖"),
]

let refmainlist: [ReferenceMain] = [
    ReferenceMain(backGroundColor: .primaryblue, image: Image("SwiftUI_Icon_Main"), tag: "swiftUI 공식문서", title: "SwiftUI의 모든 것🍎(영어 원서 주의)", explain: "SwiftUI의 기능이 설명되어있는 Apple의 공식 문서", url: "https://developer.apple.com/kr/xcode/swiftui/"),
    ReferenceMain(backGroundColor: .appyellow, image: Image("SwiftUITutorial_Icon_Main"), tag: "swiftUI 공식문서", title: "swiftUI 공식 튜토리얼🍎", explain: "SwiftUI의 기능들을 한번씩 사용해서 완성된 View를 완성해볼 수 있는 공식 Tutorial document", url: "https://developer.apple.com/tutorials/swiftui/"),
    ReferenceMain(backGroundColor: .appgray2, image: Image("Designcode_Icon"), tag: "swiftUI 강의", title: "swiftUI DesignCode사이트💻", explain: "SwiftUI로 만든 다양한 디자인을 경험하고 구현할수있는 강의 제공(유료)", url: "https://designcode.io/"),
    ReferenceMain(backGroundColor: .appgray1, image: Image("Raywenderlich_Icon"), tag: "swiftUI 강의", title: "SwiftUI의 아티클과 동영상강의(구독형)📱", explain: "SwiftUI의 다양한 기능들을 문서와 영상강의로 제공해주는 사이트(구독형 유료)", url: "https://www.raywenderlich.com/"),
    ReferenceMain(backGroundColor: .apporange, image: Image("Trailingclosure_Icon"), tag: "swiftUI 강의", title: "swiftUI의 아티클과 동영상강의(구독형)📖", explain: "SwiftUI의 다양한 디자인과 레퍼런스 강의를 제공해주는 사이트(구독형 유료)", url: "https://trailingclosure.com/"),
    ReferenceMain(backGroundColor: .appred, image: Image("SK_Icon"), tag: "swiftUI 아티클형 강의", title: "swiftUI 튜토리얼 한글 설명✏️", explain: "SwiftUI공부를 하는 한국사람이라면 한번쯤은 들어가 봤을 서근개발노트", url: "https://seons-dev.tistory.com/"),
    ReferenceMain(backGroundColor: .backgroundReverse, image: Image("Kavsoft_Icon"), tag: "swiftUI 강의", title: "SwiftUI를 공부할수있는 무료사이트🇰🇷", explain: "SwiftUI의 다양한 디자인을 무료 영상으로 공부할 수 있는 사이트(유튜브있음)", url: "https://kavsoft.dev/")
]

let refalllist: [ReferenceMain] = [
    ReferenceMain(backGroundColor: .primaryblue, image: Image("redicon"), tag: "swiftUI 공식문서", title: "SwiftUI의 모든 것🍎(영어 원서 주의)", explain: "SwiftUI의 기능이 설명되어있는 Apple의 공식 문서", url: "https://developer.apple.com/kr/xcode/swiftui/"),
    ReferenceMain(backGroundColor: .appyellow, image: Image("blueicon"), tag: "swiftUI 공식문서", title: "swiftUI 공식 튜토리얼🍎", explain: "SwiftUI의 기능들을 한번씩 사용해서 완성된 View를 완성해볼 수 있는 공식 Tutorial document", url: "https://developer.apple.com/tutorials/swiftui/"),
    ReferenceMain(backGroundColor: .appgray2, image: Image("pinkicon"), tag: "swiftUI 강의", title: "swiftUI DesignCode사이트💻", explain: "SwiftUI로 만든 다양한 디자인을 경험하고 구현할수있는 강의 제공(유료)", url: "https://designcode.io/"),
    ReferenceMain(backGroundColor: .appgray1, image: Image("yellowicon"), tag: "swiftUI 강의", title: "SwiftUI의 아티클과 동영상강의(구독형)📱", explain: "SwiftUI의 다양한 기능들을 문서와 영상강의로 제공해주는 사이트(구독형 유료)", url: "https://www.raywenderlich.com/"),
    ReferenceMain(backGroundColor: .apporange, image: Image("orangeicon"), tag: "swiftUI 강의", title: "swiftUI의 아티클과 동영상강의(구독형)📖", explain: "SwiftUI의 다양한 디자인과 레퍼런스 강의를 제공해주는 사이트(구독형 유료)", url: "https://trailingclosure.com/"),
    ReferenceMain(backGroundColor: .appred, image: Image("purpleicon"), tag: "swiftUI 아티클형 강의", title: "swiftUI 튜토리얼 한글 설명✏️", explain: "SwiftUI공부를 하는 한국사람이라면 한번쯤은 들어가 봤을 서근개발노트", url: "https://seons-dev.tistory.com/"),
    ReferenceMain(backGroundColor: .backgroundReverse, image: Image("grayicon"), tag: "swiftUI 강의", title: "SwiftUI를 공부할수있는 무료사이트🇰🇷", explain: "SwiftUI의 다양한 디자인을 무료 영상으로 공부할 수 있는 사이트(유튜브있음)", url: "https://kavsoft.dev/")
]

let test1: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .primaryblue, image: Image("SwiftUI_Icon"), title: "Test1"),
    ReferenceSub(backGroundColor: .apporange, image: Image("Ray_Icon"), title: "Test2"),
    ReferenceSub(backGroundColor: .appred, image: Image("SwiftUITutorial_Icon"), title: "Test3"),
    ReferenceSub(backGroundColor: .apporange, image: Image("Heechan_Icon"), title: "Test5")
]

let test2: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .primaryblue, image: Image("SwiftUI_Icon"), title: "Test4"),
    ReferenceSub(backGroundColor: .apporange, image: Image("Heechan_Icon"), title: "Test5"),
    ReferenceSub(backGroundColor: .appred, image: Image("SwiftUITutorial_Icon"), title: "Test6")
]

let test3: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .apporange, image: Image("SwiftUI_Icon"), title: "Test7"),
    ReferenceSub(backGroundColor: .appgray1, image: Image("Velog_Icon"), title: "Test8"),
    ReferenceSub(backGroundColor: .appbrown2, image: Image("SwiftUITutorial_Icon"), title: "Test9")
]

let test4: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .apporange, image: Image("SwiftUI_Icon"), title: "Test10"),
    ReferenceSub(backGroundColor: .appgray1, image: Image("Design_Icom"), title: "Test11"),
    ReferenceSub(backGroundColor: .appbrown2, image: Image("SwiftUITutorial_Icon"), title: "Test12")
]

let test5: [ReferenceSub] = [
    ReferenceSub(backGroundColor: .apporange, image: Image("SwiftUI_Icon"), title: "Test13"),
    ReferenceSub(backGroundColor: .appgray1, image: Image("A_Icon"), title: "Test14"),
    ReferenceSub(backGroundColor: .appbrown2, image: Image("SwiftUITutorial_Icon"), title: "Test15")
]

let refSet: [[ReferenceSub]] = [refsublist1, test1, test2, test3, test4, test5]

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
    static let buttonColor = Color("buttonColor")
    static let buttonblue = Color("buttonblue")
}
