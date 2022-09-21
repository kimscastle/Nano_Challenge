//
//  Test1View.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct Test1View: View {
    @Binding var goTest1View: Bool
    var body: some View {
        
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Button {
                    goTest1View.toggle()
                } label: {
                    Text("button")
                }

            }
        }
    }
}
//
//struct Test1View_Previews: PreviewProvider {
//    static var previews: some View {
//        Test1View(goTest1View: .constant(true))
//    }
//}
