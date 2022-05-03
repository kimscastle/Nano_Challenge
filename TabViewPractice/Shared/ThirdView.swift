//
//  ThirdView.swift
//  TabViewPractice (iOS)
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.all)
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("My name is Kim")
            }
        }
       
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
