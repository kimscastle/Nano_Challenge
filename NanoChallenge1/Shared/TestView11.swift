//
//  TestView11.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct TestView11: View {
    var book: Mybook
    var index: Int = 1
    var body: some View {
        
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                Text(book.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                InfinityCarouselView()
                    .frame(width: 300, height: 300)
                ForEach(refSet[index]){ref in
                    ReferenceSubCellView(refsubcell: ref)
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct TestView11_Previews: PreviewProvider {
    static var previews: some View {
        TestView11(book: .init(backGroundColor: Color("red"), subject: "ddd", title: "ddd"))
    }
}
